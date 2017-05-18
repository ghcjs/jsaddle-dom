{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLFontElement
       (setColor, getColor, getColorUnsafe, getColorUnchecked, setFace,
        getFace, setSize, getSize, HTMLFontElement(..),
        gTypeHTMLFontElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.color Mozilla HTMLFontElement.color documentation> 
setColor ::
         (MonadDOM m, ToJSString val) =>
           HTMLFontElement -> Maybe val -> m ()
setColor self val = liftDOM (self ^. jss "color" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.color Mozilla HTMLFontElement.color documentation> 
getColor ::
         (MonadDOM m, FromJSString result) =>
           HTMLFontElement -> m (Maybe result)
getColor self
  = liftDOM ((self ^. js "color") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.color Mozilla HTMLFontElement.color documentation> 
getColorUnsafe ::
               (MonadDOM m, HasCallStack, FromJSString result) =>
                 HTMLFontElement -> m result
getColorUnsafe self
  = liftDOM
      (((self ^. js "color") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.color Mozilla HTMLFontElement.color documentation> 
getColorUnchecked ::
                  (MonadDOM m, FromJSString result) => HTMLFontElement -> m result
getColorUnchecked self
  = liftDOM ((self ^. js "color") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.face Mozilla HTMLFontElement.face documentation> 
setFace ::
        (MonadDOM m, ToJSString val) => HTMLFontElement -> val -> m ()
setFace self val = liftDOM (self ^. jss "face" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.face Mozilla HTMLFontElement.face documentation> 
getFace ::
        (MonadDOM m, FromJSString result) => HTMLFontElement -> m result
getFace self = liftDOM ((self ^. js "face") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.size Mozilla HTMLFontElement.size documentation> 
setSize ::
        (MonadDOM m, ToJSString val) => HTMLFontElement -> val -> m ()
setSize self val = liftDOM (self ^. jss "size" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.size Mozilla HTMLFontElement.size documentation> 
getSize ::
        (MonadDOM m, FromJSString result) => HTMLFontElement -> m result
getSize self = liftDOM ((self ^. js "size") >>= fromJSValUnchecked)
