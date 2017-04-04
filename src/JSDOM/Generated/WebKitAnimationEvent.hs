{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebKitAnimationEvent
       (newWebKitAnimationEvent, getAnimationName, getElapsedTime,
        WebKitAnimationEvent(..), gTypeWebKitAnimationEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitAnimationEvent Mozilla WebKitAnimationEvent documentation> 
newWebKitAnimationEvent ::
                        (MonadDOM m, ToJSString type') =>
                          type' -> Maybe WebKitAnimationEventInit -> m WebKitAnimationEvent
newWebKitAnimationEvent type' eventInitDict
  = liftDOM
      (WebKitAnimationEvent <$>
         new (jsg "WebKitAnimationEvent")
           [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitAnimationEvent.animationName Mozilla WebKitAnimationEvent.animationName documentation> 
getAnimationName ::
                 (MonadDOM m, FromJSString result) =>
                   WebKitAnimationEvent -> m result
getAnimationName self
  = liftDOM ((self ^. js "animationName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitAnimationEvent.elapsedTime Mozilla WebKitAnimationEvent.elapsedTime documentation> 
getElapsedTime :: (MonadDOM m) => WebKitAnimationEvent -> m Double
getElapsedTime self
  = liftDOM ((self ^. js "elapsedTime") >>= valToNumber)
