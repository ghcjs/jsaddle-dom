{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DOMNamedFlowCollection
       (item, item_, itemUnsafe, itemUnchecked, namedItem, namedItem_,
        namedItemUnsafe, namedItemUnchecked, getLength,
        DOMNamedFlowCollection(..), gTypeDOMNamedFlowCollection)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.item Mozilla WebKitNamedFlowCollection.item documentation> 
item ::
     (MonadDOM m) =>
       DOMNamedFlowCollection -> Word -> m (Maybe WebKitNamedFlow)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.item Mozilla WebKitNamedFlowCollection.item documentation> 
item_ :: (MonadDOM m) => DOMNamedFlowCollection -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.item Mozilla WebKitNamedFlowCollection.item documentation> 
itemUnsafe ::
           (MonadDOM m, HasCallStack) =>
             DOMNamedFlowCollection -> Word -> m WebKitNamedFlow
itemUnsafe self index
  = liftDOM
      (((self ^. jsf "item" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.item Mozilla WebKitNamedFlowCollection.item documentation> 
itemUnchecked ::
              (MonadDOM m) => DOMNamedFlowCollection -> Word -> m WebKitNamedFlow
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.namedItem Mozilla WebKitNamedFlowCollection.namedItem documentation> 
namedItem ::
          (MonadDOM m, ToJSString name) =>
            DOMNamedFlowCollection -> name -> m (Maybe WebKitNamedFlow)
namedItem self name = liftDOM ((self ! name) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.namedItem Mozilla WebKitNamedFlowCollection.namedItem documentation> 
namedItem_ ::
           (MonadDOM m, ToJSString name) =>
             DOMNamedFlowCollection -> name -> m ()
namedItem_ self name = liftDOM (void (self ! name))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.namedItem Mozilla WebKitNamedFlowCollection.namedItem documentation> 
namedItemUnsafe ::
                (MonadDOM m, ToJSString name, HasCallStack) =>
                  DOMNamedFlowCollection -> name -> m WebKitNamedFlow
namedItemUnsafe self name
  = liftDOM
      (((self ! name) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.namedItem Mozilla WebKitNamedFlowCollection.namedItem documentation> 
namedItemUnchecked ::
                   (MonadDOM m, ToJSString name) =>
                     DOMNamedFlowCollection -> name -> m WebKitNamedFlow
namedItemUnchecked self name
  = liftDOM ((self ! name) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.length Mozilla WebKitNamedFlowCollection.length documentation> 
getLength :: (MonadDOM m) => DOMNamedFlowCollection -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
