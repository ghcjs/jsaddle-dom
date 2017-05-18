{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CSSFontFaceLoadEvent
       (newCSSFontFaceLoadEvent, getFontface, getFontfaceUnsafe,
        getFontfaceUnchecked, getError, getErrorUnsafe, getErrorUnchecked,
        CSSFontFaceLoadEvent(..), gTypeCSSFontFaceLoadEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, asyncFunction, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent Mozilla CSSFontFaceLoadEvent documentation> 
newCSSFontFaceLoadEvent ::
                        (MonadDOM m, ToJSString type') =>
                          type' -> Maybe CSSFontFaceLoadEventInit -> m CSSFontFaceLoadEvent
newCSSFontFaceLoadEvent type' eventInit
  = liftDOM
      (CSSFontFaceLoadEvent <$>
         new (jsg "CSSFontFaceLoadEvent")
           [toJSVal type', toJSVal eventInit])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.fontface Mozilla CSSFontFaceLoadEvent.fontface documentation> 
getFontface ::
            (MonadDOM m) => CSSFontFaceLoadEvent -> m (Maybe CSSFontFaceRule)
getFontface self = liftDOM ((self ^. js "fontface") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.fontface Mozilla CSSFontFaceLoadEvent.fontface documentation> 
getFontfaceUnsafe ::
                  (MonadDOM m, HasCallStack) =>
                    CSSFontFaceLoadEvent -> m CSSFontFaceRule
getFontfaceUnsafe self
  = liftDOM
      (((self ^. js "fontface") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.fontface Mozilla CSSFontFaceLoadEvent.fontface documentation> 
getFontfaceUnchecked ::
                     (MonadDOM m) => CSSFontFaceLoadEvent -> m CSSFontFaceRule
getFontfaceUnchecked self
  = liftDOM ((self ^. js "fontface") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.error Mozilla CSSFontFaceLoadEvent.error documentation> 
getError ::
         (MonadDOM m) => CSSFontFaceLoadEvent -> m (Maybe DOMError)
getError self = liftDOM ((self ^. js "error") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.error Mozilla CSSFontFaceLoadEvent.error documentation> 
getErrorUnsafe ::
               (MonadDOM m, HasCallStack) => CSSFontFaceLoadEvent -> m DOMError
getErrorUnsafe self
  = liftDOM
      (((self ^. js "error") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.error Mozilla CSSFontFaceLoadEvent.error documentation> 
getErrorUnchecked ::
                  (MonadDOM m) => CSSFontFaceLoadEvent -> m DOMError
getErrorUnchecked self
  = liftDOM ((self ^. js "error") >>= fromJSValUnchecked)
