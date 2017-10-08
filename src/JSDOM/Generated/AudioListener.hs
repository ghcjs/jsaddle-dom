{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.AudioListener
       (setPosition, setOrientation, setVelocity, setDopplerFactor,
        getDopplerFactor, setSpeedOfSound, getSpeedOfSound,
        AudioListener(..), gTypeAudioListener)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.setPosition Mozilla AudioListener.setPosition documentation> 
setPosition ::
            (MonadDOM m) => AudioListener -> Float -> Float -> Float -> m ()
setPosition self x y z
  = liftDOM
      (void
         (self ^. jsf "setPosition" [toJSVal x, toJSVal y, toJSVal z]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.setOrientation Mozilla AudioListener.setOrientation documentation> 
setOrientation ::
               (MonadDOM m) =>
                 AudioListener ->
                   Float -> Float -> Float -> Float -> Float -> Float -> m ()
setOrientation self x y z xUp yUp zUp
  = liftDOM
      (void
         (self ^. jsf "setOrientation"
            [toJSVal x, toJSVal y, toJSVal z, toJSVal xUp, toJSVal yUp,
             toJSVal zUp]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.setVelocity Mozilla AudioListener.setVelocity documentation> 
setVelocity ::
            (MonadDOM m) => AudioListener -> Float -> Float -> Float -> m ()
setVelocity self x y z
  = liftDOM
      (void
         (self ^. jsf "setVelocity" [toJSVal x, toJSVal y, toJSVal z]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.dopplerFactor Mozilla AudioListener.dopplerFactor documentation> 
setDopplerFactor :: (MonadDOM m) => AudioListener -> Float -> m ()
setDopplerFactor self val
  = liftDOM (self ^. jss "dopplerFactor" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.dopplerFactor Mozilla AudioListener.dopplerFactor documentation> 
getDopplerFactor :: (MonadDOM m) => AudioListener -> m Float
getDopplerFactor self
  = liftDOM
      (realToFrac <$> ((self ^. js "dopplerFactor") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.speedOfSound Mozilla AudioListener.speedOfSound documentation> 
setSpeedOfSound :: (MonadDOM m) => AudioListener -> Float -> m ()
setSpeedOfSound self val
  = liftDOM (self ^. jss "speedOfSound" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AudioListener.speedOfSound Mozilla AudioListener.speedOfSound documentation> 
getSpeedOfSound :: (MonadDOM m) => AudioListener -> m Float
getSpeedOfSound self
  = liftDOM
      (realToFrac <$> ((self ^. js "speedOfSound") >>= valToNumber))
