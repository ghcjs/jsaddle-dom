{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.TypeConversions
       (setTestLong, getTestLong, setTestEnforceRangeLong,
        getTestEnforceRangeLong, setTestUnsignedLong, getTestUnsignedLong,
        setTestEnforceRangeUnsignedLong, getTestEnforceRangeUnsignedLong,
        setTestLongLong, getTestLongLong, setTestEnforceRangeLongLong,
        getTestEnforceRangeLongLong, setTestUnsignedLongLong,
        getTestUnsignedLongLong, setTestEnforceRangeUnsignedLongLong,
        getTestEnforceRangeUnsignedLongLong, setTestByte, getTestByte,
        setTestEnforceRangeByte, getTestEnforceRangeByte, setTestOctet,
        getTestOctet, setTestEnforceRangeOctet, getTestEnforceRangeOctet,
        setTestShort, getTestShort, setTestEnforceRangeShort,
        getTestEnforceRangeShort, setTestUnsignedShort,
        getTestUnsignedShort, setTestEnforceRangeUnsignedShort,
        getTestEnforceRangeUnsignedShort, TypeConversions(..),
        gTypeTypeConversions)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLong Mozilla TypeConversions.testLong documentation> 
setTestLong :: (MonadDOM m) => TypeConversions -> Int -> m ()
setTestLong self val
  = liftDOM (self ^. jss "testLong" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLong Mozilla TypeConversions.testLong documentation> 
getTestLong :: (MonadDOM m) => TypeConversions -> m Int
getTestLong self
  = liftDOM (round <$> ((self ^. js "testLong") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLong Mozilla TypeConversions.testEnforceRangeLong documentation> 
setTestEnforceRangeLong ::
                        (MonadDOM m) => TypeConversions -> Int -> m ()
setTestEnforceRangeLong self val
  = liftDOM (self ^. jss "testEnforceRangeLong" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLong Mozilla TypeConversions.testEnforceRangeLong documentation> 
getTestEnforceRangeLong :: (MonadDOM m) => TypeConversions -> m Int
getTestEnforceRangeLong self
  = liftDOM
      (round <$> ((self ^. js "testEnforceRangeLong") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLong Mozilla TypeConversions.testUnsignedLong documentation> 
setTestUnsignedLong ::
                    (MonadDOM m) => TypeConversions -> Word -> m ()
setTestUnsignedLong self val
  = liftDOM (self ^. jss "testUnsignedLong" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLong Mozilla TypeConversions.testUnsignedLong documentation> 
getTestUnsignedLong :: (MonadDOM m) => TypeConversions -> m Word
getTestUnsignedLong self
  = liftDOM
      (round <$> ((self ^. js "testUnsignedLong") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLong Mozilla TypeConversions.testEnforceRangeUnsignedLong documentation> 
setTestEnforceRangeUnsignedLong ::
                                (MonadDOM m) => TypeConversions -> Word -> m ()
setTestEnforceRangeUnsignedLong self val
  = liftDOM
      (self ^. jss "testEnforceRangeUnsignedLong" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLong Mozilla TypeConversions.testEnforceRangeUnsignedLong documentation> 
getTestEnforceRangeUnsignedLong ::
                                (MonadDOM m) => TypeConversions -> m Word
getTestEnforceRangeUnsignedLong self
  = liftDOM
      (round <$>
         ((self ^. js "testEnforceRangeUnsignedLong") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLongLong Mozilla TypeConversions.testLongLong documentation> 
setTestLongLong :: (MonadDOM m) => TypeConversions -> Int64 -> m ()
setTestLongLong self val
  = liftDOM (self ^. jss "testLongLong" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testLongLong Mozilla TypeConversions.testLongLong documentation> 
getTestLongLong :: (MonadDOM m) => TypeConversions -> m Int64
getTestLongLong self
  = liftDOM (round <$> ((self ^. js "testLongLong") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLongLong Mozilla TypeConversions.testEnforceRangeLongLong documentation> 
setTestEnforceRangeLongLong ::
                            (MonadDOM m) => TypeConversions -> Int64 -> m ()
setTestEnforceRangeLongLong self val
  = liftDOM (self ^. jss "testEnforceRangeLongLong" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeLongLong Mozilla TypeConversions.testEnforceRangeLongLong documentation> 
getTestEnforceRangeLongLong ::
                            (MonadDOM m) => TypeConversions -> m Int64
getTestEnforceRangeLongLong self
  = liftDOM
      (round <$>
         ((self ^. js "testEnforceRangeLongLong") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLongLong Mozilla TypeConversions.testUnsignedLongLong documentation> 
setTestUnsignedLongLong ::
                        (MonadDOM m) => TypeConversions -> Word64 -> m ()
setTestUnsignedLongLong self val
  = liftDOM (self ^. jss "testUnsignedLongLong" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedLongLong Mozilla TypeConversions.testUnsignedLongLong documentation> 
getTestUnsignedLongLong ::
                        (MonadDOM m) => TypeConversions -> m Word64
getTestUnsignedLongLong self
  = liftDOM
      (round <$> ((self ^. js "testUnsignedLongLong") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLongLong Mozilla TypeConversions.testEnforceRangeUnsignedLongLong documentation> 
setTestEnforceRangeUnsignedLongLong ::
                                    (MonadDOM m) => TypeConversions -> Word64 -> m ()
setTestEnforceRangeUnsignedLongLong self val
  = liftDOM
      (self ^. jss "testEnforceRangeUnsignedLongLong" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedLongLong Mozilla TypeConversions.testEnforceRangeUnsignedLongLong documentation> 
getTestEnforceRangeUnsignedLongLong ::
                                    (MonadDOM m) => TypeConversions -> m Word64
getTestEnforceRangeUnsignedLongLong self
  = liftDOM
      (round <$>
         ((self ^. js "testEnforceRangeUnsignedLongLong") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testByte Mozilla TypeConversions.testByte documentation> 
setTestByte :: (MonadDOM m) => TypeConversions -> Int -> m ()
setTestByte self val
  = liftDOM (self ^. jss "testByte" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testByte Mozilla TypeConversions.testByte documentation> 
getTestByte :: (MonadDOM m) => TypeConversions -> m Int
getTestByte self
  = liftDOM (round <$> ((self ^. js "testByte") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeByte Mozilla TypeConversions.testEnforceRangeByte documentation> 
setTestEnforceRangeByte ::
                        (MonadDOM m) => TypeConversions -> Int -> m ()
setTestEnforceRangeByte self val
  = liftDOM (self ^. jss "testEnforceRangeByte" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeByte Mozilla TypeConversions.testEnforceRangeByte documentation> 
getTestEnforceRangeByte :: (MonadDOM m) => TypeConversions -> m Int
getTestEnforceRangeByte self
  = liftDOM
      (round <$> ((self ^. js "testEnforceRangeByte") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testOctet Mozilla TypeConversions.testOctet documentation> 
setTestOctet :: (MonadDOM m) => TypeConversions -> Word -> m ()
setTestOctet self val
  = liftDOM (self ^. jss "testOctet" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testOctet Mozilla TypeConversions.testOctet documentation> 
getTestOctet :: (MonadDOM m) => TypeConversions -> m Word
getTestOctet self
  = liftDOM (round <$> ((self ^. js "testOctet") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeOctet Mozilla TypeConversions.testEnforceRangeOctet documentation> 
setTestEnforceRangeOctet ::
                         (MonadDOM m) => TypeConversions -> Word -> m ()
setTestEnforceRangeOctet self val
  = liftDOM (self ^. jss "testEnforceRangeOctet" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeOctet Mozilla TypeConversions.testEnforceRangeOctet documentation> 
getTestEnforceRangeOctet ::
                         (MonadDOM m) => TypeConversions -> m Word
getTestEnforceRangeOctet self
  = liftDOM
      (round <$> ((self ^. js "testEnforceRangeOctet") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testShort Mozilla TypeConversions.testShort documentation> 
setTestShort :: (MonadDOM m) => TypeConversions -> Int -> m ()
setTestShort self val
  = liftDOM (self ^. jss "testShort" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testShort Mozilla TypeConversions.testShort documentation> 
getTestShort :: (MonadDOM m) => TypeConversions -> m Int
getTestShort self
  = liftDOM (round <$> ((self ^. js "testShort") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeShort Mozilla TypeConversions.testEnforceRangeShort documentation> 
setTestEnforceRangeShort ::
                         (MonadDOM m) => TypeConversions -> Int -> m ()
setTestEnforceRangeShort self val
  = liftDOM (self ^. jss "testEnforceRangeShort" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeShort Mozilla TypeConversions.testEnforceRangeShort documentation> 
getTestEnforceRangeShort ::
                         (MonadDOM m) => TypeConversions -> m Int
getTestEnforceRangeShort self
  = liftDOM
      (round <$> ((self ^. js "testEnforceRangeShort") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedShort Mozilla TypeConversions.testUnsignedShort documentation> 
setTestUnsignedShort ::
                     (MonadDOM m) => TypeConversions -> Word -> m ()
setTestUnsignedShort self val
  = liftDOM (self ^. jss "testUnsignedShort" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testUnsignedShort Mozilla TypeConversions.testUnsignedShort documentation> 
getTestUnsignedShort :: (MonadDOM m) => TypeConversions -> m Word
getTestUnsignedShort self
  = liftDOM
      (round <$> ((self ^. js "testUnsignedShort") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedShort Mozilla TypeConversions.testEnforceRangeUnsignedShort documentation> 
setTestEnforceRangeUnsignedShort ::
                                 (MonadDOM m) => TypeConversions -> Word -> m ()
setTestEnforceRangeUnsignedShort self val
  = liftDOM
      (self ^. jss "testEnforceRangeUnsignedShort" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TypeConversions.testEnforceRangeUnsignedShort Mozilla TypeConversions.testEnforceRangeUnsignedShort documentation> 
getTestEnforceRangeUnsignedShort ::
                                 (MonadDOM m) => TypeConversions -> m Word
getTestEnforceRangeUnsignedShort self
  = liftDOM
      (round <$>
         ((self ^. js "testEnforceRangeUnsignedShort") >>= valToNumber))
