{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Animation
       (newAnimation, getEffect, getEffectUnsafe, getEffectUnchecked,
        getTimeline, getTimelineUnsafe, getTimelineUnchecked,
        Animation(..), gTypeAnimation)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Animation Mozilla Animation documentation> 
newAnimation ::
             (MonadDOM m, IsAnimationEffect effect,
              IsAnimationTimeline timeline) =>
               Maybe effect -> Maybe timeline -> m Animation
newAnimation effect timeline
  = liftDOM
      (Animation <$>
         new (jsg "Animation") [toJSVal effect, toJSVal timeline])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Animation.effect Mozilla Animation.effect documentation> 
getEffect :: (MonadDOM m) => Animation -> m (Maybe AnimationEffect)
getEffect self = liftDOM ((self ^. js "effect") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Animation.effect Mozilla Animation.effect documentation> 
getEffectUnsafe ::
                (MonadDOM m, HasCallStack) => Animation -> m AnimationEffect
getEffectUnsafe self
  = liftDOM
      (((self ^. js "effect") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Animation.effect Mozilla Animation.effect documentation> 
getEffectUnchecked ::
                   (MonadDOM m) => Animation -> m AnimationEffect
getEffectUnchecked self
  = liftDOM ((self ^. js "effect") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Animation.timeline Mozilla Animation.timeline documentation> 
getTimeline ::
            (MonadDOM m) => Animation -> m (Maybe AnimationTimeline)
getTimeline self = liftDOM ((self ^. js "timeline") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Animation.timeline Mozilla Animation.timeline documentation> 
getTimelineUnsafe ::
                  (MonadDOM m, HasCallStack) => Animation -> m AnimationTimeline
getTimelineUnsafe self
  = liftDOM
      (((self ^. js "timeline") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Animation.timeline Mozilla Animation.timeline documentation> 
getTimelineUnchecked ::
                     (MonadDOM m) => Animation -> m AnimationTimeline
getTimelineUnchecked self
  = liftDOM ((self ^. js "timeline") >>= fromJSValUnchecked)
