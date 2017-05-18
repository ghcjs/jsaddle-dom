{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.StaticRange
       (getStartOffset, getEndOffset, getStartContainer, getEndContainer,
        getCollapsed, StaticRange(..), gTypeStaticRange)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StaticRange.startOffset Mozilla StaticRange.startOffset documentation> 
getStartOffset :: (MonadDOM m) => StaticRange -> m Word
getStartOffset self
  = liftDOM (round <$> ((self ^. js "startOffset") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StaticRange.endOffset Mozilla StaticRange.endOffset documentation> 
getEndOffset :: (MonadDOM m) => StaticRange -> m Word
getEndOffset self
  = liftDOM (round <$> ((self ^. js "endOffset") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StaticRange.startContainer Mozilla StaticRange.startContainer documentation> 
getStartContainer :: (MonadDOM m) => StaticRange -> m Node
getStartContainer self
  = liftDOM ((self ^. js "startContainer") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StaticRange.endContainer Mozilla StaticRange.endContainer documentation> 
getEndContainer :: (MonadDOM m) => StaticRange -> m Node
getEndContainer self
  = liftDOM ((self ^. js "endContainer") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StaticRange.collapsed Mozilla StaticRange.collapsed documentation> 
getCollapsed :: (MonadDOM m) => StaticRange -> m Bool
getCollapsed self
  = liftDOM ((self ^. js "collapsed") >>= valToBool)
