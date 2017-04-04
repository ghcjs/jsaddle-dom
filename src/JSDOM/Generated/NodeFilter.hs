{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.NodeFilter
       (newNodeFilter, newNodeFilterSync, newNodeFilterAsync,
        pattern FILTER_ACCEPT, pattern FILTER_REJECT, pattern FILTER_SKIP,
        pattern SHOW_ALL, pattern SHOW_ELEMENT, pattern SHOW_ATTRIBUTE,
        pattern SHOW_TEXT, pattern SHOW_CDATA_SECTION,
        pattern SHOW_ENTITY_REFERENCE, pattern SHOW_ENTITY,
        pattern SHOW_PROCESSING_INSTRUCTION, pattern SHOW_COMMENT,
        pattern SHOW_DOCUMENT, pattern SHOW_DOCUMENT_TYPE,
        pattern SHOW_DOCUMENT_FRAGMENT, pattern SHOW_NOTATION, NodeFilter)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeFilter Mozilla NodeFilter documentation> 
newNodeFilter :: (MonadDOM m) => (Node -> JSM ()) -> m NodeFilter
newNodeFilter callback
  = liftDOM
      (NodeFilter . Callback <$>
         function
           (\ _ _ [node] ->
              fromJSValUnchecked node >>= \ node' -> callback node'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeFilter Mozilla NodeFilter documentation> 
newNodeFilterSync ::
                  (MonadDOM m) => (Node -> JSM ()) -> m NodeFilter
newNodeFilterSync callback
  = liftDOM
      (NodeFilter . Callback <$>
         function
           (\ _ _ [node] ->
              fromJSValUnchecked node >>= \ node' -> callback node'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeFilter Mozilla NodeFilter documentation> 
newNodeFilterAsync ::
                   (MonadDOM m) => (Node -> JSM ()) -> m NodeFilter
newNodeFilterAsync callback
  = liftDOM
      (NodeFilter . Callback <$>
         function
           (\ _ _ [node] ->
              fromJSValUnchecked node >>= \ node' -> callback node'))
pattern FILTER_ACCEPT = 1
pattern FILTER_REJECT = 2
pattern FILTER_SKIP = 3
pattern SHOW_ALL = 4294967295
pattern SHOW_ELEMENT = 1
pattern SHOW_ATTRIBUTE = 2
pattern SHOW_TEXT = 4
pattern SHOW_CDATA_SECTION = 8
pattern SHOW_ENTITY_REFERENCE = 16
pattern SHOW_ENTITY = 32
pattern SHOW_PROCESSING_INSTRUCTION = 64
pattern SHOW_COMMENT = 128
pattern SHOW_DOCUMENT = 256
pattern SHOW_DOCUMENT_TYPE = 512
pattern SHOW_DOCUMENT_FRAGMENT = 1024
pattern SHOW_NOTATION = 2048
