{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLSlotElement
       (assignedNodes, assignedNodes_, setName, getName,
        HTMLSlotElement(..), gTypeHTMLSlotElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement.assignedNodes Mozilla HTMLSlotElement.assignedNodes documentation> 
assignedNodes ::
              (MonadDOM m) =>
                HTMLSlotElement -> Maybe AssignedNodesOptions -> m [Node]
assignedNodes self options
  = liftDOM
      ((self ^. jsf "assignedNodes" [toJSVal options]) >>=
         fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement.assignedNodes Mozilla HTMLSlotElement.assignedNodes documentation> 
assignedNodes_ ::
               (MonadDOM m) =>
                 HTMLSlotElement -> Maybe AssignedNodesOptions -> m ()
assignedNodes_ self options
  = liftDOM (void (self ^. jsf "assignedNodes" [toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement.name Mozilla HTMLSlotElement.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => HTMLSlotElement -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSlotElement.name Mozilla HTMLSlotElement.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => HTMLSlotElement -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)
