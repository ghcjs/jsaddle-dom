{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.XPathEvaluator
       (newXPathEvaluator, createExpression, createExpression_,
        createNSResolver, createNSResolver_, evaluate, evaluate_,
        XPathEvaluator(..), gTypeXPathEvaluator)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator Mozilla XPathEvaluator documentation> 
newXPathEvaluator :: (MonadDOM m) => m XPathEvaluator
newXPathEvaluator
  = liftDOM (XPathEvaluator <$> new (jsg "XPathEvaluator") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createExpression Mozilla XPathEvaluator.createExpression documentation> 
createExpression ::
                 (MonadDOM m, ToJSString expression) =>
                   XPathEvaluator ->
                     Maybe expression -> Maybe XPathNSResolver -> m XPathExpression
createExpression self expression resolver
  = liftDOM
      ((self ^. jsf "createExpression"
          [toJSVal expression, toJSVal resolver])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createExpression Mozilla XPathEvaluator.createExpression documentation> 
createExpression_ ::
                  (MonadDOM m, ToJSString expression) =>
                    XPathEvaluator -> Maybe expression -> Maybe XPathNSResolver -> m ()
createExpression_ self expression resolver
  = liftDOM
      (void
         (self ^. jsf "createExpression"
            [toJSVal expression, toJSVal resolver]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createNSResolver Mozilla XPathEvaluator.createNSResolver documentation> 
createNSResolver ::
                 (MonadDOM m, IsNode nodeResolver) =>
                   XPathEvaluator -> Maybe nodeResolver -> m XPathNSResolver
createNSResolver self nodeResolver
  = liftDOM
      ((self ^. jsf "createNSResolver" [toJSVal nodeResolver]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.createNSResolver Mozilla XPathEvaluator.createNSResolver documentation> 
createNSResolver_ ::
                  (MonadDOM m, IsNode nodeResolver) =>
                    XPathEvaluator -> Maybe nodeResolver -> m ()
createNSResolver_ self nodeResolver
  = liftDOM
      (void (self ^. jsf "createNSResolver" [toJSVal nodeResolver]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.evaluate Mozilla XPathEvaluator.evaluate documentation> 
evaluate ::
         (MonadDOM m, ToJSString expression, IsNode contextNode) =>
           XPathEvaluator ->
             Maybe expression ->
               Maybe contextNode ->
                 Maybe XPathNSResolver ->
                   Maybe Word -> Maybe XPathResult -> m XPathResult
evaluate self expression contextNode resolver type' inResult
  = liftDOM
      ((self ^. jsf "evaluate"
          [toJSVal expression, toJSVal contextNode, toJSVal resolver,
           toJSVal type', toJSVal inResult])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathEvaluator.evaluate Mozilla XPathEvaluator.evaluate documentation> 
evaluate_ ::
          (MonadDOM m, ToJSString expression, IsNode contextNode) =>
            XPathEvaluator ->
              Maybe expression ->
                Maybe contextNode ->
                  Maybe XPathNSResolver -> Maybe Word -> Maybe XPathResult -> m ()
evaluate_ self expression contextNode resolver type' inResult
  = liftDOM
      (void
         (self ^. jsf "evaluate"
            [toJSVal expression, toJSVal contextNode, toJSVal resolver,
             toJSVal type', toJSVal inResult]))
