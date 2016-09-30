{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SecurityPolicy
       (allowsConnectionTo, allowsFontFrom, allowsFormAction,
        allowsFrameFrom, allowsImageFrom, allowsMediaFrom,
        allowsObjectFrom, allowsPluginType, allowsScriptFrom,
        allowsStyleFrom, getAllowsEval, getAllowsInlineScript,
        getAllowsInlineStyle, getIsActive, getReportURIs, SecurityPolicy,
        castToSecurityPolicy, gTypeSecurityPolicy)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsConnectionTo Mozilla SecurityPolicy.allowsConnectionTo documentation> 
allowsConnectionTo ::
                   (MonadDOM m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsConnectionTo self url
  = liftDOM
      ((self ^. jsf "allowsConnectionTo" [toJSVal url]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsFontFrom Mozilla SecurityPolicy.allowsFontFrom documentation> 
allowsFontFrom ::
               (MonadDOM m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsFontFrom self url
  = liftDOM
      ((self ^. jsf "allowsFontFrom" [toJSVal url]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsFormAction Mozilla SecurityPolicy.allowsFormAction documentation> 
allowsFormAction ::
                 (MonadDOM m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsFormAction self url
  = liftDOM
      ((self ^. jsf "allowsFormAction" [toJSVal url]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsFrameFrom Mozilla SecurityPolicy.allowsFrameFrom documentation> 
allowsFrameFrom ::
                (MonadDOM m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsFrameFrom self url
  = liftDOM
      ((self ^. jsf "allowsFrameFrom" [toJSVal url]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsImageFrom Mozilla SecurityPolicy.allowsImageFrom documentation> 
allowsImageFrom ::
                (MonadDOM m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsImageFrom self url
  = liftDOM
      ((self ^. jsf "allowsImageFrom" [toJSVal url]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsMediaFrom Mozilla SecurityPolicy.allowsMediaFrom documentation> 
allowsMediaFrom ::
                (MonadDOM m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsMediaFrom self url
  = liftDOM
      ((self ^. jsf "allowsMediaFrom" [toJSVal url]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsObjectFrom Mozilla SecurityPolicy.allowsObjectFrom documentation> 
allowsObjectFrom ::
                 (MonadDOM m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsObjectFrom self url
  = liftDOM
      ((self ^. jsf "allowsObjectFrom" [toJSVal url]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsPluginType Mozilla SecurityPolicy.allowsPluginType documentation> 
allowsPluginType ::
                 (MonadDOM m, ToJSString type') => SecurityPolicy -> type' -> m Bool
allowsPluginType self type'
  = liftDOM
      ((self ^. jsf "allowsPluginType" [toJSVal type']) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsScriptFrom Mozilla SecurityPolicy.allowsScriptFrom documentation> 
allowsScriptFrom ::
                 (MonadDOM m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsScriptFrom self url
  = liftDOM
      ((self ^. jsf "allowsScriptFrom" [toJSVal url]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsStyleFrom Mozilla SecurityPolicy.allowsStyleFrom documentation> 
allowsStyleFrom ::
                (MonadDOM m, ToJSString url) => SecurityPolicy -> url -> m Bool
allowsStyleFrom self url
  = liftDOM
      ((self ^. jsf "allowsStyleFrom" [toJSVal url]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsEval Mozilla SecurityPolicy.allowsEval documentation> 
getAllowsEval :: (MonadDOM m) => SecurityPolicy -> m Bool
getAllowsEval self
  = liftDOM ((self ^. js "allowsEval") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsInlineScript Mozilla SecurityPolicy.allowsInlineScript documentation> 
getAllowsInlineScript :: (MonadDOM m) => SecurityPolicy -> m Bool
getAllowsInlineScript self
  = liftDOM ((self ^. js "allowsInlineScript") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.allowsInlineStyle Mozilla SecurityPolicy.allowsInlineStyle documentation> 
getAllowsInlineStyle :: (MonadDOM m) => SecurityPolicy -> m Bool
getAllowsInlineStyle self
  = liftDOM ((self ^. js "allowsInlineStyle") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.isActive Mozilla SecurityPolicy.isActive documentation> 
getIsActive :: (MonadDOM m) => SecurityPolicy -> m Bool
getIsActive self = liftDOM ((self ^. js "isActive") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicy.reportURIs Mozilla SecurityPolicy.reportURIs documentation> 
getReportURIs ::
              (MonadDOM m) => SecurityPolicy -> m (Maybe DOMStringList)
getReportURIs self
  = liftDOM ((self ^. js "reportURIs") >>= fromJSVal)
