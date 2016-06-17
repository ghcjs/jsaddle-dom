{-# LANGUAGE CPP, OverloadedStrings, PatternSynonyms #-}
module JSDOM (
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
import GI.WebKit.Objects.WebView
       (getWebViewSettings, onWebViewLoadFinished, setWebViewSettings,
        webViewSetSettings, webViewGetSettings, webViewLoadUri, webViewNew,
        webViewGetDomDocument, webViewGetInspector, WebView(..))
import GI.Gtk
       (widgetShowAll, mainQuit,
        WindowPosition(..), containerAdd, scrolledWindowNew,
        windowSetPosition, windowSetDefaultSize, windowNew)
import qualified GI.Gtk.Functions as Gtk (init, main)
import GI.WebKit.Objects.WebSettings
       (setWebSettingsMonospaceFontFamily,
        setWebSettingsEnableDeveloperExtras, setWebSettingsUserAgent,
        getWebSettingsUserAgent)
import GI.Gtk.Objects.Widget (onWidgetDestroy)
import GI.WebKit.Objects.WebInspector
       (onWebInspectorShowWindow, onWebInspectorInspectWebView)
import GI.Gtk.Enums (WindowType(..))
import GI.GLib.Functions (timeoutAdd)
import GI.GLib.Constants (pattern PRIORITY_LOW)
import GI.Gtk.Objects.Adjustment (noAdjustment)
import Control.Monad.IO.Class (liftIO)
#endif

import JSDOM.Generated.Window (getNavigator, getDocument)
import JSDOM.Generated.Navigator (getUserAgent)
import Foreign (ForeignPtr, nullPtr, Ptr)
import Control.Monad (unless, forever, liftM)
import Control.Concurrent
       (yield, threadDelay, takeMVar, newEmptyMVar)
import System.Environment (getArgs)
import Data.List (isSuffixOf)
import Language.Javascript.JSaddle (runJSaddle, JSM, jsg)
import JSDOM.Types
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
  Gtk.init Nothing
  window <- windowNew WindowTypeToplevel
  timeoutAdd PRIORITY_LOW 10 (yield >> return True)
  windowSetDefaultSize window 900 600
  windowSetPosition window WindowPositionCenter
  scrollWin <- scrolledWindowNew noAdjustment noAdjustment
  webView <- webViewNew
  settings <- getWebViewSettings webView
  userAgent <- getWebSettingsUserAgent settings
  setWebSettingsUserAgent settings $ userAgent <> " " <> userAgentKey
  setWebViewSettings webView settings
  window `containerAdd` scrollWin
  scrollWin `containerAdd` webView
  onWidgetDestroy window $ liftIO mainQuit
  widgetShowAll window
  onWebViewLoadFinished webView $ \frame ->
    runJSaddle webView $ main webView
  args <- getArgs
  case args of
    uri:_ -> webViewLoadUri webView (T.pack uri)
    []    -> runJSaddle webView $ main webView
  Gtk.main
#endif

enableInspector :: MonadIO m => WebView -> m ()
#ifdef ghcjs_HOST_OS
enableInspector _ = return ()
#else
enableInspector webView = liftIO $ do
  settings <- getWebViewSettings webView
  setWebSettingsEnableDeveloperExtras settings True
  setWebViewSettings webView settings
  inspector <- webViewGetInspector webView
  window <- windowNew WindowTypeToplevel
  windowSetDefaultSize window 900 300
  scrollWin <- scrolledWindowNew noAdjustment noAdjustment
  onWebInspectorInspectWebView inspector $ \view -> do
    inspectorView <- webViewNew
    settings <- getWebViewSettings inspectorView
    setWebSettingsMonospaceFontFamily settings "Consolas"
    setWebViewSettings inspectorView settings
    scrollWin `containerAdd` inspectorView
    window `containerAdd` scrollWin
    widgetShowAll window
    return inspectorView
  onWebInspectorShowWindow inspector $ do
    widgetShowAll window
    return True
  return ()
#endif
