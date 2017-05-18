{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ParentNode
       (prepend, append, querySelector, querySelector_,
        querySelectorUnsafe, querySelectorUnchecked, querySelectorAll,
        querySelectorAll_, getChildren, getFirstElementChild,
        getFirstElementChildUnsafe, getFirstElementChildUnchecked,
        getLastElementChild, getLastElementChildUnsafe,
        getLastElementChildUnchecked, getChildElementCount, ParentNode(..),
        gTypeParentNode, IsParentNode, toParentNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.prepend Mozilla ParentNode.prepend documentation> 
prepend ::
        (MonadDOM m, IsParentNode self, IsNodeOrString nodes) =>
          self -> [nodes] -> m ()
prepend self nodes
  = liftDOM
      (void
         ((toParentNode self) ^. jsf "prepend" [toJSVal (array nodes)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.append Mozilla ParentNode.append documentation> 
append ::
       (MonadDOM m, IsParentNode self, IsNodeOrString nodes) =>
         self -> [nodes] -> m ()
append self nodes
  = liftDOM
      (void
         ((toParentNode self) ^. jsf "append" [toJSVal (array nodes)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.querySelector Mozilla ParentNode.querySelector documentation> 
querySelector ::
              (MonadDOM m, IsParentNode self, ToJSString selectors) =>
                self -> selectors -> m (Maybe Element)
querySelector self selectors
  = liftDOM
      (((toParentNode self) ^. jsf "querySelector" [toJSVal selectors])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.querySelector Mozilla ParentNode.querySelector documentation> 
querySelector_ ::
               (MonadDOM m, IsParentNode self, ToJSString selectors) =>
                 self -> selectors -> m ()
querySelector_ self selectors
  = liftDOM
      (void
         ((toParentNode self) ^. jsf "querySelector" [toJSVal selectors]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.querySelector Mozilla ParentNode.querySelector documentation> 
querySelectorUnsafe ::
                    (MonadDOM m, IsParentNode self, ToJSString selectors,
                     HasCallStack) =>
                      self -> selectors -> m Element
querySelectorUnsafe self selectors
  = liftDOM
      ((((toParentNode self) ^. jsf "querySelector" [toJSVal selectors])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.querySelector Mozilla ParentNode.querySelector documentation> 
querySelectorUnchecked ::
                       (MonadDOM m, IsParentNode self, ToJSString selectors) =>
                         self -> selectors -> m Element
querySelectorUnchecked self selectors
  = liftDOM
      (((toParentNode self) ^. jsf "querySelector" [toJSVal selectors])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.querySelectorAll Mozilla ParentNode.querySelectorAll documentation> 
querySelectorAll ::
                 (MonadDOM m, IsParentNode self, ToJSString selectors) =>
                   self -> selectors -> m NodeList
querySelectorAll self selectors
  = liftDOM
      (((toParentNode self) ^. jsf "querySelectorAll"
          [toJSVal selectors])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.querySelectorAll Mozilla ParentNode.querySelectorAll documentation> 
querySelectorAll_ ::
                  (MonadDOM m, IsParentNode self, ToJSString selectors) =>
                    self -> selectors -> m ()
querySelectorAll_ self selectors
  = liftDOM
      (void
         ((toParentNode self) ^. jsf "querySelectorAll"
            [toJSVal selectors]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.children Mozilla ParentNode.children documentation> 
getChildren ::
            (MonadDOM m, IsParentNode self) => self -> m HTMLCollection
getChildren self
  = liftDOM
      (((toParentNode self) ^. js "children") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.firstElementChild Mozilla ParentNode.firstElementChild documentation> 
getFirstElementChild ::
                     (MonadDOM m, IsParentNode self) => self -> m (Maybe Element)
getFirstElementChild self
  = liftDOM
      (((toParentNode self) ^. js "firstElementChild") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.firstElementChild Mozilla ParentNode.firstElementChild documentation> 
getFirstElementChildUnsafe ::
                           (MonadDOM m, IsParentNode self, HasCallStack) => self -> m Element
getFirstElementChildUnsafe self
  = liftDOM
      ((((toParentNode self) ^. js "firstElementChild") >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.firstElementChild Mozilla ParentNode.firstElementChild documentation> 
getFirstElementChildUnchecked ::
                              (MonadDOM m, IsParentNode self) => self -> m Element
getFirstElementChildUnchecked self
  = liftDOM
      (((toParentNode self) ^. js "firstElementChild") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.lastElementChild Mozilla ParentNode.lastElementChild documentation> 
getLastElementChild ::
                    (MonadDOM m, IsParentNode self) => self -> m (Maybe Element)
getLastElementChild self
  = liftDOM
      (((toParentNode self) ^. js "lastElementChild") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.lastElementChild Mozilla ParentNode.lastElementChild documentation> 
getLastElementChildUnsafe ::
                          (MonadDOM m, IsParentNode self, HasCallStack) => self -> m Element
getLastElementChildUnsafe self
  = liftDOM
      ((((toParentNode self) ^. js "lastElementChild") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.lastElementChild Mozilla ParentNode.lastElementChild documentation> 
getLastElementChildUnchecked ::
                             (MonadDOM m, IsParentNode self) => self -> m Element
getLastElementChildUnchecked self
  = liftDOM
      (((toParentNode self) ^. js "lastElementChild") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode.childElementCount Mozilla ParentNode.childElementCount documentation> 
getChildElementCount ::
                     (MonadDOM m, IsParentNode self) => self -> m Word
getChildElementCount self
  = liftDOM
      (round <$>
         (((toParentNode self) ^. js "childElementCount") >>= valToNumber))
