{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaRemoteControls
       (newMediaRemoteControls, setPreviousTrackEnabled,
        getPreviousTrackEnabled, setNextTrackEnabled, getNextTrackEnabled,
        previoustrack, nexttrack, MediaRemoteControls(..),
        gTypeMediaRemoteControls)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaRemoteControls Mozilla MediaRemoteControls documentation> 
newMediaRemoteControls :: (MonadDOM m) => m MediaRemoteControls
newMediaRemoteControls
  = liftDOM
      (MediaRemoteControls <$> new (jsg "MediaRemoteControls") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaRemoteControls.previousTrackEnabled Mozilla MediaRemoteControls.previousTrackEnabled documentation> 
setPreviousTrackEnabled ::
                        (MonadDOM m) => MediaRemoteControls -> Bool -> m ()
setPreviousTrackEnabled self val
  = liftDOM (self ^. jss "previousTrackEnabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaRemoteControls.previousTrackEnabled Mozilla MediaRemoteControls.previousTrackEnabled documentation> 
getPreviousTrackEnabled ::
                        (MonadDOM m) => MediaRemoteControls -> m Bool
getPreviousTrackEnabled self
  = liftDOM ((self ^. js "previousTrackEnabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaRemoteControls.nextTrackEnabled Mozilla MediaRemoteControls.nextTrackEnabled documentation> 
setNextTrackEnabled ::
                    (MonadDOM m) => MediaRemoteControls -> Bool -> m ()
setNextTrackEnabled self val
  = liftDOM (self ^. jss "nextTrackEnabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaRemoteControls.nextTrackEnabled Mozilla MediaRemoteControls.nextTrackEnabled documentation> 
getNextTrackEnabled ::
                    (MonadDOM m) => MediaRemoteControls -> m Bool
getNextTrackEnabled self
  = liftDOM ((self ^. js "nextTrackEnabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaRemoteControls.onprevioustrack Mozilla MediaRemoteControls.onprevioustrack documentation> 
previoustrack :: EventName MediaRemoteControls onprevioustrack
previoustrack = unsafeEventName (toJSString "previoustrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaRemoteControls.onnexttrack Mozilla MediaRemoteControls.onnexttrack documentation> 
nexttrack :: EventName MediaRemoteControls onnexttrack
nexttrack = unsafeEventName (toJSString "nexttrack")
