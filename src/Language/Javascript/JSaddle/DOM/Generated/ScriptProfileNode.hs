{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.ScriptProfileNode
       (children, getId, getFunctionName, getUrl, getLineNumber,
        getColumnNumber, ScriptProfileNode, castToScriptProfileNode,
        gTypeScriptProfileNode)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.children Mozilla ScriptProfileNode.children documentation> 
children ::
         (MonadDOM m) => ScriptProfileNode -> m [Maybe ScriptProfileNode]
children self = liftDOM ((self ^. js "children") >>= fromJSArray)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.id Mozilla ScriptProfileNode.id documentation> 
getId :: (MonadDOM m) => ScriptProfileNode -> m Word
getId self
  = liftDOM (round <$> ((self ^. js "id") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.functionName Mozilla ScriptProfileNode.functionName documentation> 
getFunctionName ::
                (MonadDOM m, FromJSString result) => ScriptProfileNode -> m result
getFunctionName self
  = liftDOM ((self ^. js "functionName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.url Mozilla ScriptProfileNode.url documentation> 
getUrl ::
       (MonadDOM m, FromJSString result) => ScriptProfileNode -> m result
getUrl self = liftDOM ((self ^. js "url") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.lineNumber Mozilla ScriptProfileNode.lineNumber documentation> 
getLineNumber :: (MonadDOM m) => ScriptProfileNode -> m Word
getLineNumber self
  = liftDOM (round <$> ((self ^. js "lineNumber") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfileNode.columnNumber Mozilla ScriptProfileNode.columnNumber documentation> 
getColumnNumber :: (MonadDOM m) => ScriptProfileNode -> m Word
getColumnNumber self
  = liftDOM (round <$> ((self ^. js "columnNumber") >>= valToNumber))