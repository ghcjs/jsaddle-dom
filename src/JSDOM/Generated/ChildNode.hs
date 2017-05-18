{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ChildNode
       (before, after, replaceWith, remove, ChildNode(..), gTypeChildNode,
        IsChildNode, toChildNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ChildNode.before Mozilla ChildNode.before documentation> 
before ::
       (MonadDOM m, IsChildNode self, IsNodeOrString nodes) =>
         self -> [nodes] -> m ()
before self nodes
  = liftDOM
      (void ((toChildNode self) ^. jsf "before" [toJSVal (array nodes)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ChildNode.after Mozilla ChildNode.after documentation> 
after ::
      (MonadDOM m, IsChildNode self, IsNodeOrString nodes) =>
        self -> [nodes] -> m ()
after self nodes
  = liftDOM
      (void ((toChildNode self) ^. jsf "after" [toJSVal (array nodes)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ChildNode.replaceWith Mozilla ChildNode.replaceWith documentation> 
replaceWith ::
            (MonadDOM m, IsChildNode self, IsNodeOrString nodes) =>
              self -> [nodes] -> m ()
replaceWith self nodes
  = liftDOM
      (void
         ((toChildNode self) ^. jsf "replaceWith" [toJSVal (array nodes)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ChildNode.remove Mozilla ChildNode.remove documentation> 
remove :: (MonadDOM m, IsChildNode self) => self -> m ()
remove self
  = liftDOM (void ((toChildNode self) ^. jsf "remove" ()))
