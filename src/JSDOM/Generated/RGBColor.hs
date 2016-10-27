{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RGBColor
       (getRed, getRedUnsafe, getRedUnchecked, getGreen, getGreenUnsafe,
        getGreenUnchecked, getBlue, getBlueUnsafe, getBlueUnchecked,
        RGBColor(..), gTypeRGBColor)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.red Mozilla RGBColor.red documentation> 
getRed :: (MonadDOM m) => RGBColor -> m (Maybe CSSPrimitiveValue)
getRed self = liftDOM ((self ^. js "red") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.red Mozilla RGBColor.red documentation> 
getRedUnsafe ::
             (MonadDOM m, HasCallStack) => RGBColor -> m CSSPrimitiveValue
getRedUnsafe self
  = liftDOM
      (((self ^. js "red") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.red Mozilla RGBColor.red documentation> 
getRedUnchecked :: (MonadDOM m) => RGBColor -> m CSSPrimitiveValue
getRedUnchecked self
  = liftDOM ((self ^. js "red") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.green Mozilla RGBColor.green documentation> 
getGreen :: (MonadDOM m) => RGBColor -> m (Maybe CSSPrimitiveValue)
getGreen self = liftDOM ((self ^. js "green") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.green Mozilla RGBColor.green documentation> 
getGreenUnsafe ::
               (MonadDOM m, HasCallStack) => RGBColor -> m CSSPrimitiveValue
getGreenUnsafe self
  = liftDOM
      (((self ^. js "green") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.green Mozilla RGBColor.green documentation> 
getGreenUnchecked ::
                  (MonadDOM m) => RGBColor -> m CSSPrimitiveValue
getGreenUnchecked self
  = liftDOM ((self ^. js "green") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.blue Mozilla RGBColor.blue documentation> 
getBlue :: (MonadDOM m) => RGBColor -> m (Maybe CSSPrimitiveValue)
getBlue self = liftDOM ((self ^. js "blue") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.blue Mozilla RGBColor.blue documentation> 
getBlueUnsafe ::
              (MonadDOM m, HasCallStack) => RGBColor -> m CSSPrimitiveValue
getBlueUnsafe self
  = liftDOM
      (((self ^. js "blue") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.blue Mozilla RGBColor.blue documentation> 
getBlueUnchecked :: (MonadDOM m) => RGBColor -> m CSSPrimitiveValue
getBlueUnchecked self
  = liftDOM ((self ^. js "blue") >>= fromJSValUnchecked)
