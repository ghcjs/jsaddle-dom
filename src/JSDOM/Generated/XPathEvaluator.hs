{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.XPathEvaluator
       (newXPathEvaluator, createExpression, createExpression_,
        createExpressionUnchecked, createNSResolver, createNSResolver_,
        createNSResolverUnchecked, evaluate, evaluate_, evaluateUnchecked,
        XPathEvaluator(..), gTypeXPathEvaluator)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator Mozilla XPathEvaluator documentation> 
newXPathEvaluator :: (MonadDOM m) => m XPathEvaluator
newXPathEvaluator
  = liftDOM (XPathEvaluator <$> new (jsg "XPathEvaluator") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createExpression Mozilla XPathEvaluator.createExpression documentation> 
createExpression ::
                 (MonadDOM m, ToJSString expression) =>
                   XPathEvaluator ->
                     expression -> Maybe XPathNSResolver -> m (Maybe XPathExpression)
createExpression self expression resolver
  = liftDOM
      ((self ^. jsf "createExpression"
          [toJSVal expression, toJSVal resolver])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createExpression Mozilla XPathEvaluator.createExpression documentation> 
createExpression_ ::
                  (MonadDOM m, ToJSString expression) =>
                    XPathEvaluator -> expression -> Maybe XPathNSResolver -> m ()
createExpression_ self expression resolver
  = liftDOM
      (void
         (self ^. jsf "createExpression"
            [toJSVal expression, toJSVal resolver]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createExpression Mozilla XPathEvaluator.createExpression documentation> 
createExpressionUnchecked ::
                          (MonadDOM m, ToJSString expression) =>
                            XPathEvaluator ->
                              expression -> Maybe XPathNSResolver -> m XPathExpression
createExpressionUnchecked self expression resolver
  = liftDOM
      ((self ^. jsf "createExpression"
          [toJSVal expression, toJSVal resolver])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createNSResolver Mozilla XPathEvaluator.createNSResolver documentation> 
createNSResolver ::
                 (MonadDOM m, IsNode nodeResolver) =>
                   XPathEvaluator -> Maybe nodeResolver -> m (Maybe XPathNSResolver)
createNSResolver self nodeResolver
  = liftDOM
      ((self ^. jsf "createNSResolver" [toJSVal nodeResolver]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createNSResolver Mozilla XPathEvaluator.createNSResolver documentation> 
createNSResolver_ ::
                  (MonadDOM m, IsNode nodeResolver) =>
                    XPathEvaluator -> Maybe nodeResolver -> m ()
createNSResolver_ self nodeResolver
  = liftDOM
      (void (self ^. jsf "createNSResolver" [toJSVal nodeResolver]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createNSResolver Mozilla XPathEvaluator.createNSResolver documentation> 
createNSResolverUnchecked ::
                          (MonadDOM m, IsNode nodeResolver) =>
                            XPathEvaluator -> Maybe nodeResolver -> m XPathNSResolver
createNSResolverUnchecked self nodeResolver
  = liftDOM
      ((self ^. jsf "createNSResolver" [toJSVal nodeResolver]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.evaluate Mozilla XPathEvaluator.evaluate documentation> 
evaluate ::
         (MonadDOM m, ToJSString expression, IsNode contextNode) =>
           XPathEvaluator ->
             expression ->
               Maybe contextNode ->
                 Maybe XPathNSResolver ->
                   Word -> Maybe XPathResult -> m (Maybe XPathResult)
evaluate self expression contextNode resolver type' inResult
  = liftDOM
      ((self ^. jsf "evaluate"
          [toJSVal expression, toJSVal contextNode, toJSVal resolver,
           toJSVal type', toJSVal inResult])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.evaluate Mozilla XPathEvaluator.evaluate documentation> 
evaluate_ ::
          (MonadDOM m, ToJSString expression, IsNode contextNode) =>
            XPathEvaluator ->
              expression ->
                Maybe contextNode ->
                  Maybe XPathNSResolver -> Word -> Maybe XPathResult -> m ()
evaluate_ self expression contextNode resolver type' inResult
  = liftDOM
      (void
         (self ^. jsf "evaluate"
            [toJSVal expression, toJSVal contextNode, toJSVal resolver,
             toJSVal type', toJSVal inResult]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.evaluate Mozilla XPathEvaluator.evaluate documentation> 
evaluateUnchecked ::
                  (MonadDOM m, ToJSString expression, IsNode contextNode) =>
                    XPathEvaluator ->
                      expression ->
                        Maybe contextNode ->
                          Maybe XPathNSResolver -> Word -> Maybe XPathResult -> m XPathResult
evaluateUnchecked self expression contextNode resolver type'
  inResult
  = liftDOM
      ((self ^. jsf "evaluate"
          [toJSVal expression, toJSVal contextNode, toJSVal resolver,
           toJSVal type', toJSVal inResult])
         >>= fromJSValUnchecked)
