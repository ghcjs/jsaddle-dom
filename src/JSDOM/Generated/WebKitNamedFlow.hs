{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebKitNamedFlow
       (getRegionsByContent, getRegions, getContent, getName, getOverset,
        getFirstEmptyRegionIndex, WebKitNamedFlow, castToWebKitNamedFlow,
        gTypeWebKitNamedFlow)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegionsByContent Mozilla WebKitNamedFlow.getRegionsByContent documentation> 
getRegionsByContent ::
                    (MonadDOM m, IsNode contentNode) =>
                      WebKitNamedFlow -> Maybe contentNode -> m (Maybe NodeList)
getRegionsByContent self contentNode
  = liftDOM
      ((self ^. jsf "getRegionsByContent" [toJSVal contentNode]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegions Mozilla WebKitNamedFlow.getRegions documentation> 
getRegions :: (MonadDOM m) => WebKitNamedFlow -> m (Maybe NodeList)
getRegions self
  = liftDOM ((self ^. jsf "getRegions" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getContent Mozilla WebKitNamedFlow.getContent documentation> 
getContent :: (MonadDOM m) => WebKitNamedFlow -> m (Maybe NodeList)
getContent self
  = liftDOM ((self ^. jsf "getContent" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.name Mozilla WebKitNamedFlow.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => WebKitNamedFlow -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.overset Mozilla WebKitNamedFlow.overset documentation> 
getOverset :: (MonadDOM m) => WebKitNamedFlow -> m Bool
getOverset self = liftDOM ((self ^. js "overset") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.firstEmptyRegionIndex Mozilla WebKitNamedFlow.firstEmptyRegionIndex documentation> 
getFirstEmptyRegionIndex ::
                         (MonadDOM m) => WebKitNamedFlow -> m Int
getFirstEmptyRegionIndex self
  = liftDOM
      (round <$> ((self ^. js "firstEmptyRegionIndex") >>= valToNumber))
