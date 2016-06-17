{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.XPathResult
       (iterateNext, snapshotItem, pattern ANY_TYPE, pattern NUMBER_TYPE,
        pattern STRING_TYPE, pattern BOOLEAN_TYPE,
        pattern UNORDERED_NODE_ITERATOR_TYPE,
        pattern ORDERED_NODE_ITERATOR_TYPE,
        pattern UNORDERED_NODE_SNAPSHOT_TYPE,
        pattern ORDERED_NODE_SNAPSHOT_TYPE,
        pattern ANY_UNORDERED_NODE_TYPE, pattern FIRST_ORDERED_NODE_TYPE,
        getResultType, getNumberValue, getStringValue, getBooleanValue,
        getSingleNodeValue, getInvalidIteratorState, getSnapshotLength,
        XPathResult, castToXPathResult, gTypeXPathResult)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.iterateNext Mozilla XPathResult.iterateNext documentation> 
iterateNext :: (MonadDOM m) => XPathResult -> m (Maybe Node)
iterateNext self
  = liftDOM ((self ^. js "iterateNext") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.snapshotItem Mozilla XPathResult.snapshotItem documentation> 
snapshotItem ::
             (MonadDOM m) => XPathResult -> Word -> m (Maybe Node)
snapshotItem self index
  = liftDOM
      ((self ^. jsf "snapshotItem" [toJSVal index]) >>= fromJSVal)
pattern ANY_TYPE = 0
pattern NUMBER_TYPE = 1
pattern STRING_TYPE = 2
pattern BOOLEAN_TYPE = 3
pattern UNORDERED_NODE_ITERATOR_TYPE = 4
pattern ORDERED_NODE_ITERATOR_TYPE = 5
pattern UNORDERED_NODE_SNAPSHOT_TYPE = 6
pattern ORDERED_NODE_SNAPSHOT_TYPE = 7
pattern ANY_UNORDERED_NODE_TYPE = 8
pattern FIRST_ORDERED_NODE_TYPE = 9

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.resultType Mozilla XPathResult.resultType documentation> 
getResultType :: (MonadDOM m) => XPathResult -> m Word
getResultType self
  = liftDOM (round <$> ((self ^. js "resultType") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.numberValue Mozilla XPathResult.numberValue documentation> 
getNumberValue :: (MonadDOM m) => XPathResult -> m Double
getNumberValue self
  = liftDOM ((self ^. js "numberValue") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.stringValue Mozilla XPathResult.stringValue documentation> 
getStringValue ::
               (MonadDOM m, FromJSString result) => XPathResult -> m result
getStringValue self
  = liftDOM ((self ^. js "stringValue") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.booleanValue Mozilla XPathResult.booleanValue documentation> 
getBooleanValue :: (MonadDOM m) => XPathResult -> m Bool
getBooleanValue self
  = liftDOM ((self ^. js "booleanValue") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.singleNodeValue Mozilla XPathResult.singleNodeValue documentation> 
getSingleNodeValue :: (MonadDOM m) => XPathResult -> m (Maybe Node)
getSingleNodeValue self
  = liftDOM ((self ^. js "singleNodeValue") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.invalidIteratorState Mozilla XPathResult.invalidIteratorState documentation> 
getInvalidIteratorState :: (MonadDOM m) => XPathResult -> m Bool
getInvalidIteratorState self
  = liftDOM ((self ^. js "invalidIteratorState") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathResult.snapshotLength Mozilla XPathResult.snapshotLength documentation> 
getSnapshotLength :: (MonadDOM m) => XPathResult -> m Word
getSnapshotLength self
  = liftDOM
      (round <$> ((self ^. js "snapshotLength") >>= valToNumber))
