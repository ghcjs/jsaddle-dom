{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.FontLoader
       (checkFont, loadFont, notifyWhenFontsReady, loading, loadingDone,
        loadStart, load, error, getLoading, FontLoader, castToFontLoader,
        gTypeFontLoader)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.checkFont Mozilla FontLoader.checkFont documentation> 
checkFont ::
          (MonadDOM m, ToJSString font, ToJSString text) =>
            FontLoader -> font -> text -> m Bool
checkFont self font text
  = liftDOM
      ((self ^. jsf "checkFont" [toJSVal font, toJSVal text]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.loadFont Mozilla FontLoader.loadFont documentation> 
loadFont ::
         (MonadDOM m, IsDictionary params) =>
           FontLoader -> Maybe params -> m ()
loadFont self params
  = liftDOM (void (self ^. jsf "loadFont" [toJSVal params]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.notifyWhenFontsReady Mozilla FontLoader.notifyWhenFontsReady documentation> 
notifyWhenFontsReady ::
                     (MonadDOM m) => FontLoader -> Maybe VoidCallback -> m ()
notifyWhenFontsReady self callback
  = liftDOM
      (void (self ^. jsf "notifyWhenFontsReady" [toJSVal callback]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.onloading Mozilla FontLoader.onloading documentation> 
loading :: EventName FontLoader Event
loading = unsafeEventName (toJSString "loading")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.onloadingdone Mozilla FontLoader.onloadingdone documentation> 
loadingDone :: EventName FontLoader Event
loadingDone = unsafeEventName (toJSString "loadingdone")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.onloadstart Mozilla FontLoader.onloadstart documentation> 
loadStart :: EventName FontLoader ProgressEvent
loadStart = unsafeEventName (toJSString "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.onload Mozilla FontLoader.onload documentation> 
load :: EventName FontLoader UIEvent
load = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.onerror Mozilla FontLoader.onerror documentation> 
error :: EventName FontLoader UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontLoader.loading Mozilla FontLoader.loading documentation> 
getLoading :: (MonadDOM m) => FontLoader -> m Bool
getLoading self = liftDOM ((self ^. js "loading") >>= valToBool)