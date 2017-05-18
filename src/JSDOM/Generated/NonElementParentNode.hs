{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.NonElementParentNode
       (getElementById, getElementById_, getElementByIdUnsafe,
        getElementByIdUnchecked, NonElementParentNode(..),
        gTypeNonElementParentNode, IsNonElementParentNode,
        toNonElementParentNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonElementParentNode.getElementById Mozilla NonElementParentNode.getElementById documentation> 
getElementById ::
               (MonadDOM m, IsNonElementParentNode self, ToJSString elementId) =>
                 self -> elementId -> m (Maybe Element)
getElementById self elementId
  = liftDOM
      (((toNonElementParentNode self) ^. jsf "getElementById"
          [toJSVal elementId])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonElementParentNode.getElementById Mozilla NonElementParentNode.getElementById documentation> 
getElementById_ ::
                (MonadDOM m, IsNonElementParentNode self, ToJSString elementId) =>
                  self -> elementId -> m ()
getElementById_ self elementId
  = liftDOM
      (void
         ((toNonElementParentNode self) ^. jsf "getElementById"
            [toJSVal elementId]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonElementParentNode.getElementById Mozilla NonElementParentNode.getElementById documentation> 
getElementByIdUnsafe ::
                     (MonadDOM m, IsNonElementParentNode self, ToJSString elementId,
                      HasCallStack) =>
                       self -> elementId -> m Element
getElementByIdUnsafe self elementId
  = liftDOM
      ((((toNonElementParentNode self) ^. jsf "getElementById"
           [toJSVal elementId])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonElementParentNode.getElementById Mozilla NonElementParentNode.getElementById documentation> 
getElementByIdUnchecked ::
                        (MonadDOM m, IsNonElementParentNode self, ToJSString elementId) =>
                          self -> elementId -> m Element
getElementByIdUnchecked self elementId
  = liftDOM
      (((toNonElementParentNode self) ^. jsf "getElementById"
          [toJSVal elementId])
         >>= fromJSValUnchecked)
