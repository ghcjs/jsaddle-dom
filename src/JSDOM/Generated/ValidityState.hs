{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ValidityState
       (getValueMissing, getTypeMismatch, getPatternMismatch, getTooLong,
        getRangeUnderflow, getRangeOverflow, getStepMismatch, getBadInput,
        getCustomError, getValid, ValidityState, castToValidityState,
        gTypeValidityState)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.valueMissing Mozilla ValidityState.valueMissing documentation> 
getValueMissing :: (MonadDOM m) => ValidityState -> m Bool
getValueMissing self
  = liftDOM ((self ^. js "valueMissing") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.typeMismatch Mozilla ValidityState.typeMismatch documentation> 
getTypeMismatch :: (MonadDOM m) => ValidityState -> m Bool
getTypeMismatch self
  = liftDOM ((self ^. js "typeMismatch") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.patternMismatch Mozilla ValidityState.patternMismatch documentation> 
getPatternMismatch :: (MonadDOM m) => ValidityState -> m Bool
getPatternMismatch self
  = liftDOM ((self ^. js "patternMismatch") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.tooLong Mozilla ValidityState.tooLong documentation> 
getTooLong :: (MonadDOM m) => ValidityState -> m Bool
getTooLong self = liftDOM ((self ^. js "tooLong") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.rangeUnderflow Mozilla ValidityState.rangeUnderflow documentation> 
getRangeUnderflow :: (MonadDOM m) => ValidityState -> m Bool
getRangeUnderflow self
  = liftDOM ((self ^. js "rangeUnderflow") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.rangeOverflow Mozilla ValidityState.rangeOverflow documentation> 
getRangeOverflow :: (MonadDOM m) => ValidityState -> m Bool
getRangeOverflow self
  = liftDOM ((self ^. js "rangeOverflow") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.stepMismatch Mozilla ValidityState.stepMismatch documentation> 
getStepMismatch :: (MonadDOM m) => ValidityState -> m Bool
getStepMismatch self
  = liftDOM ((self ^. js "stepMismatch") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.badInput Mozilla ValidityState.badInput documentation> 
getBadInput :: (MonadDOM m) => ValidityState -> m Bool
getBadInput self = liftDOM ((self ^. js "badInput") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.customError Mozilla ValidityState.customError documentation> 
getCustomError :: (MonadDOM m) => ValidityState -> m Bool
getCustomError self
  = liftDOM ((self ^. js "customError") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ValidityState.valid Mozilla ValidityState.valid documentation> 
getValid :: (MonadDOM m) => ValidityState -> m Bool
getValid self = liftDOM ((self ^. js "valid") >>= valToBool)
