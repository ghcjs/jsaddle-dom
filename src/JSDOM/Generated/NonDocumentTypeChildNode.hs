{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.NonDocumentTypeChildNode
       (getPreviousElementSibling, getPreviousElementSiblingUnsafe,
        getPreviousElementSiblingUnchecked, getNextElementSibling,
        getNextElementSiblingUnsafe, getNextElementSiblingUnchecked,
        NonDocumentTypeChildNode(..), gTypeNonDocumentTypeChildNode,
        IsNonDocumentTypeChildNode, toNonDocumentTypeChildNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonDocumentTypeChildNode.previousElementSibling Mozilla NonDocumentTypeChildNode.previousElementSibling documentation> 
getPreviousElementSibling ::
                          (MonadDOM m, IsNonDocumentTypeChildNode self) =>
                            self -> m (Maybe Element)
getPreviousElementSibling self
  = liftDOM
      (((toNonDocumentTypeChildNode self) ^. js "previousElementSibling")
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonDocumentTypeChildNode.previousElementSibling Mozilla NonDocumentTypeChildNode.previousElementSibling documentation> 
getPreviousElementSiblingUnsafe ::
                                (MonadDOM m, IsNonDocumentTypeChildNode self, HasCallStack) =>
                                  self -> m Element
getPreviousElementSiblingUnsafe self
  = liftDOM
      ((((toNonDocumentTypeChildNode self) ^.
           js "previousElementSibling")
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonDocumentTypeChildNode.previousElementSibling Mozilla NonDocumentTypeChildNode.previousElementSibling documentation> 
getPreviousElementSiblingUnchecked ::
                                   (MonadDOM m, IsNonDocumentTypeChildNode self) =>
                                     self -> m Element
getPreviousElementSiblingUnchecked self
  = liftDOM
      (((toNonDocumentTypeChildNode self) ^. js "previousElementSibling")
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonDocumentTypeChildNode.nextElementSibling Mozilla NonDocumentTypeChildNode.nextElementSibling documentation> 
getNextElementSibling ::
                      (MonadDOM m, IsNonDocumentTypeChildNode self) =>
                        self -> m (Maybe Element)
getNextElementSibling self
  = liftDOM
      (((toNonDocumentTypeChildNode self) ^. js "nextElementSibling") >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonDocumentTypeChildNode.nextElementSibling Mozilla NonDocumentTypeChildNode.nextElementSibling documentation> 
getNextElementSiblingUnsafe ::
                            (MonadDOM m, IsNonDocumentTypeChildNode self, HasCallStack) =>
                              self -> m Element
getNextElementSiblingUnsafe self
  = liftDOM
      ((((toNonDocumentTypeChildNode self) ^. js "nextElementSibling")
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NonDocumentTypeChildNode.nextElementSibling Mozilla NonDocumentTypeChildNode.nextElementSibling documentation> 
getNextElementSiblingUnchecked ::
                               (MonadDOM m, IsNonDocumentTypeChildNode self) => self -> m Element
getNextElementSiblingUnchecked self
  = liftDOM
      (((toNonDocumentTypeChildNode self) ^. js "nextElementSibling") >>=
         fromJSValUnchecked)
