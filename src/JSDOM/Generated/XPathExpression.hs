{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.XPathExpression
       (evaluate, evaluate_, evaluateUnchecked, XPathExpression,
        castToXPathExpression, gTypeXPathExpression)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathExpression.evaluate Mozilla XPathExpression.evaluate documentation> 
evaluate ::
         (MonadDOM m, IsNode contextNode) =>
           XPathExpression ->
             Maybe contextNode ->
               Word -> Maybe XPathResult -> m (Maybe XPathResult)
evaluate self contextNode type' inResult
  = liftDOM
      ((self ^. jsf "evaluate"
          [toJSVal contextNode, toJSVal type', toJSVal inResult])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathExpression.evaluate Mozilla XPathExpression.evaluate documentation> 
evaluate_ ::
          (MonadDOM m, IsNode contextNode) =>
            XPathExpression ->
              Maybe contextNode -> Word -> Maybe XPathResult -> m ()
evaluate_ self contextNode type' inResult
  = liftDOM
      (void
         (self ^. jsf "evaluate"
            [toJSVal contextNode, toJSVal type', toJSVal inResult]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathExpression.evaluate Mozilla XPathExpression.evaluate documentation> 
evaluateUnchecked ::
                  (MonadDOM m, IsNode contextNode) =>
                    XPathExpression ->
                      Maybe contextNode -> Word -> Maybe XPathResult -> m XPathResult
evaluateUnchecked self contextNode type' inResult
  = liftDOM
      ((self ^. jsf "evaluate"
          [toJSVal contextNode, toJSVal type', toJSVal inResult])
         >>= fromJSValUnchecked)
