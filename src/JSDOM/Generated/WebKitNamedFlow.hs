{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebKitNamedFlow
       (getRegionsByContent, getRegionsByContent_, getRegions,
        getRegions_, getContent, getContent_, getName, getOverset,
        getFirstEmptyRegionIndex, WebKitNamedFlow(..),
        gTypeWebKitNamedFlow)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegionsByContent Mozilla WebKitNamedFlow.getRegionsByContent documentation> 
getRegionsByContent ::
                    (MonadDOM m, IsNode contentNode) =>
                      WebKitNamedFlow -> Maybe contentNode -> m NodeList
getRegionsByContent self contentNode
  = liftDOM
      ((self ^. jsf "getRegionsByContent" [toJSVal contentNode]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegionsByContent Mozilla WebKitNamedFlow.getRegionsByContent documentation> 
getRegionsByContent_ ::
                     (MonadDOM m, IsNode contentNode) =>
                       WebKitNamedFlow -> Maybe contentNode -> m ()
getRegionsByContent_ self contentNode
  = liftDOM
      (void (self ^. jsf "getRegionsByContent" [toJSVal contentNode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegions Mozilla WebKitNamedFlow.getRegions documentation> 
getRegions :: (MonadDOM m) => WebKitNamedFlow -> m NodeList
getRegions self
  = liftDOM ((self ^. jsf "getRegions" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegions Mozilla WebKitNamedFlow.getRegions documentation> 
getRegions_ :: (MonadDOM m) => WebKitNamedFlow -> m ()
getRegions_ self = liftDOM (void (self ^. jsf "getRegions" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getContent Mozilla WebKitNamedFlow.getContent documentation> 
getContent :: (MonadDOM m) => WebKitNamedFlow -> m NodeList
getContent self
  = liftDOM ((self ^. jsf "getContent" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getContent Mozilla WebKitNamedFlow.getContent documentation> 
getContent_ :: (MonadDOM m) => WebKitNamedFlow -> m ()
getContent_ self = liftDOM (void (self ^. jsf "getContent" ()))

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
