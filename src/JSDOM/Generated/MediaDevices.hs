{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaDevices
       (getSupportedConstraints, getSupportedConstraints_, getUserMedia,
        getUserMedia_, enumerateDevices, enumerateDevices_,
        MediaDevices(..), gTypeMediaDevices)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices.getSupportedConstraints Mozilla MediaDevices.getSupportedConstraints documentation> 
getSupportedConstraints ::
                        (MonadDOM m) => MediaDevices -> m MediaTrackSupportedConstraints
getSupportedConstraints self
  = liftDOM
      ((self ^. jsf "getSupportedConstraints" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices.getSupportedConstraints Mozilla MediaDevices.getSupportedConstraints documentation> 
getSupportedConstraints_ :: (MonadDOM m) => MediaDevices -> m ()
getSupportedConstraints_ self
  = liftDOM (void (self ^. jsf "getSupportedConstraints" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices.getUserMedia Mozilla MediaDevices.getUserMedia documentation> 
getUserMedia ::
             (MonadDOM m) =>
               MediaDevices -> Maybe MediaStreamConstraints -> m MediaStream
getUserMedia self constraints
  = liftDOM
      (((self ^. jsf "getUserMedia" [toJSVal constraints]) >>=
          readPromise)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices.getUserMedia Mozilla MediaDevices.getUserMedia documentation> 
getUserMedia_ ::
              (MonadDOM m) =>
                MediaDevices -> Maybe MediaStreamConstraints -> m ()
getUserMedia_ self constraints
  = liftDOM (void (self ^. jsf "getUserMedia" [toJSVal constraints]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices.enumerateDevices Mozilla MediaDevices.enumerateDevices documentation> 
enumerateDevices ::
                 (MonadDOM m) => MediaDevices -> m [MediaDeviceInfo]
enumerateDevices self
  = liftDOM
      (((self ^. jsf "enumerateDevices" ()) >>= readPromise) >>=
         fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices.enumerateDevices Mozilla MediaDevices.enumerateDevices documentation> 
enumerateDevices_ :: (MonadDOM m) => MediaDevices -> m ()
enumerateDevices_ self
  = liftDOM (void (self ^. jsf "enumerateDevices" ()))
