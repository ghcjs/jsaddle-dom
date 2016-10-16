{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebKitNamedFlow
       (getRegionsByContent, getRegionsByContent_,
        getRegionsByContentUnsafe, getRegionsByContentUnchecked,
        getRegions, getRegions_, getRegionsUnsafe, getRegionsUnchecked,
        getContent, getContent_, getContentUnsafe, getContentUnchecked,
        getName, getOverset, getFirstEmptyRegionIndex, WebKitNamedFlow(..),
        gTypeWebKitNamedFlow)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegionsByContent Mozilla WebKitNamedFlow.getRegionsByContent documentation> 
getRegionsByContent ::
                    (MonadDOM m, IsNode contentNode) =>
                      WebKitNamedFlow -> Maybe contentNode -> m (Maybe NodeList)
getRegionsByContent self contentNode
  = liftDOM
      ((self ^. jsf "getRegionsByContent" [toJSVal contentNode]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegionsByContent Mozilla WebKitNamedFlow.getRegionsByContent documentation> 
getRegionsByContent_ ::
                     (MonadDOM m, IsNode contentNode) =>
                       WebKitNamedFlow -> Maybe contentNode -> m ()
getRegionsByContent_ self contentNode
  = liftDOM
      (void (self ^. jsf "getRegionsByContent" [toJSVal contentNode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegionsByContent Mozilla WebKitNamedFlow.getRegionsByContent documentation> 
getRegionsByContentUnsafe ::
                          (MonadDOM m, IsNode contentNode, HasCallStack) =>
                            WebKitNamedFlow -> Maybe contentNode -> m NodeList
getRegionsByContentUnsafe self contentNode
  = liftDOM
      (((self ^. jsf "getRegionsByContent" [toJSVal contentNode]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegionsByContent Mozilla WebKitNamedFlow.getRegionsByContent documentation> 
getRegionsByContentUnchecked ::
                             (MonadDOM m, IsNode contentNode) =>
                               WebKitNamedFlow -> Maybe contentNode -> m NodeList
getRegionsByContentUnchecked self contentNode
  = liftDOM
      ((self ^. jsf "getRegionsByContent" [toJSVal contentNode]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegions Mozilla WebKitNamedFlow.getRegions documentation> 
getRegions :: (MonadDOM m) => WebKitNamedFlow -> m (Maybe NodeList)
getRegions self
  = liftDOM ((self ^. jsf "getRegions" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegions Mozilla WebKitNamedFlow.getRegions documentation> 
getRegions_ :: (MonadDOM m) => WebKitNamedFlow -> m ()
getRegions_ self = liftDOM (void (self ^. jsf "getRegions" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegions Mozilla WebKitNamedFlow.getRegions documentation> 
getRegionsUnsafe ::
                 (MonadDOM m, HasCallStack) => WebKitNamedFlow -> m NodeList
getRegionsUnsafe self
  = liftDOM
      (((self ^. jsf "getRegions" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getRegions Mozilla WebKitNamedFlow.getRegions documentation> 
getRegionsUnchecked ::
                    (MonadDOM m) => WebKitNamedFlow -> m NodeList
getRegionsUnchecked self
  = liftDOM ((self ^. jsf "getRegions" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getContent Mozilla WebKitNamedFlow.getContent documentation> 
getContent :: (MonadDOM m) => WebKitNamedFlow -> m (Maybe NodeList)
getContent self
  = liftDOM ((self ^. jsf "getContent" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getContent Mozilla WebKitNamedFlow.getContent documentation> 
getContent_ :: (MonadDOM m) => WebKitNamedFlow -> m ()
getContent_ self = liftDOM (void (self ^. jsf "getContent" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getContent Mozilla WebKitNamedFlow.getContent documentation> 
getContentUnsafe ::
                 (MonadDOM m, HasCallStack) => WebKitNamedFlow -> m NodeList
getContentUnsafe self
  = liftDOM
      (((self ^. jsf "getContent" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlow.getContent Mozilla WebKitNamedFlow.getContent documentation> 
getContentUnchecked ::
                    (MonadDOM m) => WebKitNamedFlow -> m NodeList
getContentUnchecked self
  = liftDOM ((self ^. jsf "getContent" ()) >>= fromJSValUnchecked)

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
