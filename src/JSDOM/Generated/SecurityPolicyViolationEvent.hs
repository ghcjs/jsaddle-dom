{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SecurityPolicyViolationEvent
       (newSecurityPolicyViolationEvent, getDocumentURI, getReferrer,
        getBlockedURI, getViolatedDirective, getEffectiveDirective,
        getOriginalPolicy, getSourceFile, getStatusCode, getLineNumber,
        getColumnNumber, SecurityPolicyViolationEvent(..),
        gTypeSecurityPolicyViolationEvent)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent Mozilla SecurityPolicyViolationEvent documentation> 
newSecurityPolicyViolationEvent ::
                                (MonadDOM m, ToJSString type') =>
                                  type' ->
                                    Maybe SecurityPolicyViolationEventInit ->
                                      m SecurityPolicyViolationEvent
newSecurityPolicyViolationEvent type' eventInitDict
  = liftDOM
      (SecurityPolicyViolationEvent <$>
         new (jsg "SecurityPolicyViolationEvent")
           [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.documentURI Mozilla SecurityPolicyViolationEvent.documentURI documentation> 
getDocumentURI ::
               (MonadDOM m, FromJSString result) =>
                 SecurityPolicyViolationEvent -> m result
getDocumentURI self
  = liftDOM ((self ^. js "documentURI") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.referrer Mozilla SecurityPolicyViolationEvent.referrer documentation> 
getReferrer ::
            (MonadDOM m, FromJSString result) =>
              SecurityPolicyViolationEvent -> m result
getReferrer self
  = liftDOM ((self ^. js "referrer") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.blockedURI Mozilla SecurityPolicyViolationEvent.blockedURI documentation> 
getBlockedURI ::
              (MonadDOM m, FromJSString result) =>
                SecurityPolicyViolationEvent -> m result
getBlockedURI self
  = liftDOM ((self ^. js "blockedURI") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.violatedDirective Mozilla SecurityPolicyViolationEvent.violatedDirective documentation> 
getViolatedDirective ::
                     (MonadDOM m, FromJSString result) =>
                       SecurityPolicyViolationEvent -> m result
getViolatedDirective self
  = liftDOM ((self ^. js "violatedDirective") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.effectiveDirective Mozilla SecurityPolicyViolationEvent.effectiveDirective documentation> 
getEffectiveDirective ::
                      (MonadDOM m, FromJSString result) =>
                        SecurityPolicyViolationEvent -> m result
getEffectiveDirective self
  = liftDOM
      ((self ^. js "effectiveDirective") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.originalPolicy Mozilla SecurityPolicyViolationEvent.originalPolicy documentation> 
getOriginalPolicy ::
                  (MonadDOM m, FromJSString result) =>
                    SecurityPolicyViolationEvent -> m result
getOriginalPolicy self
  = liftDOM ((self ^. js "originalPolicy") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.sourceFile Mozilla SecurityPolicyViolationEvent.sourceFile documentation> 
getSourceFile ::
              (MonadDOM m, FromJSString result) =>
                SecurityPolicyViolationEvent -> m result
getSourceFile self
  = liftDOM ((self ^. js "sourceFile") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.statusCode Mozilla SecurityPolicyViolationEvent.statusCode documentation> 
getStatusCode ::
              (MonadDOM m) => SecurityPolicyViolationEvent -> m Word
getStatusCode self
  = liftDOM (round <$> ((self ^. js "statusCode") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.lineNumber Mozilla SecurityPolicyViolationEvent.lineNumber documentation> 
getLineNumber ::
              (MonadDOM m) => SecurityPolicyViolationEvent -> m Int
getLineNumber self
  = liftDOM (round <$> ((self ^. js "lineNumber") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent.columnNumber Mozilla SecurityPolicyViolationEvent.columnNumber documentation> 
getColumnNumber ::
                (MonadDOM m) => SecurityPolicyViolationEvent -> m Int
getColumnNumber self
  = liftDOM (round <$> ((self ^. js "columnNumber") >>= valToNumber))
