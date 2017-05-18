{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Animatable
       (getAnimations, getAnimations_, Animatable(..), gTypeAnimatable,
        IsAnimatable, toAnimatable)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Animatable.getAnimations Mozilla Animatable.getAnimations documentation> 
getAnimations ::
              (MonadDOM m, IsAnimatable self) => self -> m [Animation]
getAnimations self
  = liftDOM
      (((toAnimatable self) ^. jsf "getAnimations" ()) >>=
         fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Animatable.getAnimations Mozilla Animatable.getAnimations documentation> 
getAnimations_ :: (MonadDOM m, IsAnimatable self) => self -> m ()
getAnimations_ self
  = liftDOM (void ((toAnimatable self) ^. jsf "getAnimations" ()))
