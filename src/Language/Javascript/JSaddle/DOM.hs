{-# LANGUAGE CPP, OverloadedStrings #-}
module Language.Javascript.JSaddle.DOM (
  currentWindow
, currentDocument
, WebView
, runWebGUI
, enableInspector
) where

import qualified Data.Text as T
import Data.Monoid ((<>))
#ifdef ghcjs_HOST_OS
import GHCJS.Types (JSVal(..))
import GHCJS.Nullable (Nullable(..), nullableToMaybe)
import Control.Applicative ((<$>))
#else
import Graphics.UI.Gtk.WebKit.WebView
       (webViewSetWebSettings, webViewGetWebSettings, loadStarted,
        webViewLoadUri, loadFinished, webViewNew, webViewGetDomDocument,
        webViewGetInspector)
import Graphics.UI.Gtk.WebKit.WebInspector
       (showWindow, inspectWebView)
import Graphics.UI.Gtk
       (timeoutAddFull, widgetShowAll, mainQuit, objectDestroy,
        WindowPosition(..), containerAdd, scrolledWindowNew,
        windowSetPosition, windowSetDefaultSize, windowNew, mainGUI,
        initGUI, postGUISync, postGUIAsync)
import System.Glib.Signals (on)
import System.Glib.Attributes (get, AttrOp(..), set)
import System.Glib.FFI (maybeNull)
import System.Glib.MainLoop (priorityLow)
import Graphics.UI.Gtk.WebKit.WebSettings
       (webSettingsMonospaceFontFamily, webSettingsUserAgent,
        webSettingsEnableDeveloperExtras)
import Control.Monad.IO.Class (liftIO)
import Graphics.UI.Gtk.WebKit.Types (castToWebView, WebView(..))
#endif

import Language.Javascript.JSaddle.DOM.Window (getNavigator, getDocument)
import Language.Javascript.JSaddle.DOM.Navigator (getUserAgent)
import Foreign (ForeignPtr, nullPtr, Ptr)
import Control.Monad (unless, forever, liftM)
import Control.Concurrent
       (yield, threadDelay, takeMVar, newEmptyMVar)
import System.Environment (getArgs)
import Data.List (isSuffixOf)
import Language.Javascript.JSaddle (runJSaddle, JSM, jsg)
import Language.Javascript.JSaddle.DOM.Types
       (FromJSVal(..), MonadDOM(..), MonadDOM, Document(..), Window(..))
import Control.Monad.IO.Class (MonadIO)

#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$r = window"
  ghcjs_currentWindow :: IO JSVal

data WebView = WebView
#endif

currentWindow :: MonadDOM m => m (Maybe Window)
currentWindow = liftDOM $ jsg ("window" :: String) >>= fromJSVal

currentDocument :: MonadDOM m => m (Maybe Document)
currentDocument = liftDOM $ jsg ("document" :: String) >>= fromJSVal

runWebGUI :: (WebView -> JSM ()) -> IO ()
runWebGUI = runWebGUI' "GHCJS"

runWebGUI' :: T.Text -> (WebView -> JSM ()) -> IO ()
runWebGUI' userAgentKey main = do
#ifdef ghcjs_HOST_OS
  window <- Window <$> ghcjs_currentWindow
  runJSaddle window $ main WebView
#else
  initGUI
  window <- windowNew
  timeoutAddFull (yield >> return True) priorityLow 10
  windowSetDefaultSize window 900 600
  windowSetPosition window WinPosCenter
  scrollWin <- scrolledWindowNew Nothing Nothing
  webView <- webViewNew
  settings <- webViewGetWebSettings webView
  userAgent <- settings `get` webSettingsUserAgent
  settings `set` [webSettingsUserAgent := userAgent <> " " <> userAgentKey]
  webViewSetWebSettings webView settings
  window `containerAdd` scrollWin
  scrollWin `containerAdd` webView
  on window objectDestroy . liftIO $ mainQuit
  widgetShowAll window
  webView `on` loadFinished $ \frame ->
    runJSaddle_ webView $ main webView
  args <- getArgs
  case args of
    uri:_ -> webViewLoadUri webView (T.pack uri)
    []    -> runJSaddle_ webView $ main webView
  mainGUI
#endif

enableInspector :: MonadIO m => WebView -> m ()
#ifdef ghcjs_HOST_OS
enableInspector _ = return ()
#else
enableInspector webView = liftIO $ do
  settings <- webViewGetWebSettings webView
  settings `set` [webSettingsEnableDeveloperExtras := True]
  webViewSetWebSettings webView settings
  inspector <- webViewGetInspector webView
  window <- windowNew
  windowSetDefaultSize window 900 300
  scrollWin <- scrolledWindowNew Nothing Nothing
  inspector `on` inspectWebView $ \view -> do
    inspectorView <- webViewNew
    settings <- webViewGetWebSettings inspectorView
    settings `set` [webSettingsMonospaceFontFamily := ("Consolas" :: String)]
    webViewSetWebSettings inspectorView settings
    scrollWin `containerAdd` inspectorView
    window `containerAdd` scrollWin
    widgetShowAll window
    return inspectorView
  inspector `on` showWindow $ do
    widgetShowAll window
    return True
  return ()
#endif
