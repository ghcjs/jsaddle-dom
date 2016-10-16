{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLMeterElement
       (setValue, getValue, setMin, getMin, setMax, getMax, setLow,
        getLow, setHigh, getHigh, setOptimum, getOptimum, getLabels,
        getLabelsUnsafe, getLabelsUnchecked, HTMLMeterElement(..),
        gTypeHTMLMeterElement)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.value Mozilla HTMLMeterElement.value documentation> 
setValue :: (MonadDOM m) => HTMLMeterElement -> Double -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.value Mozilla HTMLMeterElement.value documentation> 
getValue :: (MonadDOM m) => HTMLMeterElement -> m Double
getValue self = liftDOM ((self ^. js "value") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.min Mozilla HTMLMeterElement.min documentation> 
setMin :: (MonadDOM m) => HTMLMeterElement -> Double -> m ()
setMin self val = liftDOM (self ^. jss "min" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.min Mozilla HTMLMeterElement.min documentation> 
getMin :: (MonadDOM m) => HTMLMeterElement -> m Double
getMin self = liftDOM ((self ^. js "min") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.max Mozilla HTMLMeterElement.max documentation> 
setMax :: (MonadDOM m) => HTMLMeterElement -> Double -> m ()
setMax self val = liftDOM (self ^. jss "max" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.max Mozilla HTMLMeterElement.max documentation> 
getMax :: (MonadDOM m) => HTMLMeterElement -> m Double
getMax self = liftDOM ((self ^. js "max") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.low Mozilla HTMLMeterElement.low documentation> 
setLow :: (MonadDOM m) => HTMLMeterElement -> Double -> m ()
setLow self val = liftDOM (self ^. jss "low" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.low Mozilla HTMLMeterElement.low documentation> 
getLow :: (MonadDOM m) => HTMLMeterElement -> m Double
getLow self = liftDOM ((self ^. js "low") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.high Mozilla HTMLMeterElement.high documentation> 
setHigh :: (MonadDOM m) => HTMLMeterElement -> Double -> m ()
setHigh self val = liftDOM (self ^. jss "high" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.high Mozilla HTMLMeterElement.high documentation> 
getHigh :: (MonadDOM m) => HTMLMeterElement -> m Double
getHigh self = liftDOM ((self ^. js "high") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.optimum Mozilla HTMLMeterElement.optimum documentation> 
setOptimum :: (MonadDOM m) => HTMLMeterElement -> Double -> m ()
setOptimum self val = liftDOM (self ^. jss "optimum" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.optimum Mozilla HTMLMeterElement.optimum documentation> 
getOptimum :: (MonadDOM m) => HTMLMeterElement -> m Double
getOptimum self = liftDOM ((self ^. js "optimum") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.labels Mozilla HTMLMeterElement.labels documentation> 
getLabels :: (MonadDOM m) => HTMLMeterElement -> m (Maybe NodeList)
getLabels self = liftDOM ((self ^. js "labels") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.labels Mozilla HTMLMeterElement.labels documentation> 
getLabelsUnsafe ::
                (MonadDOM m, HasCallStack) => HTMLMeterElement -> m NodeList
getLabelsUnsafe self
  = liftDOM
      (((self ^. js "labels") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement.labels Mozilla HTMLMeterElement.labels documentation> 
getLabelsUnchecked ::
                   (MonadDOM m) => HTMLMeterElement -> m NodeList
getLabelsUnchecked self
  = liftDOM ((self ^. js "labels") >>= fromJSValUnchecked)
