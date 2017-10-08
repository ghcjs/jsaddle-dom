{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLCollection
       (item, item_, itemUnsafe, itemUnchecked, namedItem, namedItem_,
        namedItemUnsafe, namedItemUnchecked, getLength, HTMLCollection(..),
        gTypeHTMLCollection, IsHTMLCollection, toHTMLCollection)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.item Mozilla HTMLCollection.item documentation> 
item ::
     (MonadDOM m, IsHTMLCollection self) =>
       self -> Word -> m (Maybe Element)
item self index
  = liftDOM
      (((toHTMLCollection self) ^. jsf "item" [toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.item Mozilla HTMLCollection.item documentation> 
item_ ::
      (MonadDOM m, IsHTMLCollection self) => self -> Word -> m ()
item_ self index
  = liftDOM
      (void ((toHTMLCollection self) ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.item Mozilla HTMLCollection.item documentation> 
itemUnsafe ::
           (MonadDOM m, IsHTMLCollection self, HasCallStack) =>
             self -> Word -> m Element
itemUnsafe self index
  = liftDOM
      ((((toHTMLCollection self) ^. jsf "item" [toJSVal index]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.item Mozilla HTMLCollection.item documentation> 
itemUnchecked ::
              (MonadDOM m, IsHTMLCollection self) => self -> Word -> m Element
itemUnchecked self index
  = liftDOM
      (((toHTMLCollection self) ^. jsf "item" [toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.namedItem Mozilla HTMLCollection.namedItem documentation> 
namedItem ::
          (MonadDOM m, IsHTMLCollection self, ToJSString name) =>
            self -> name -> m (Maybe Element)
namedItem self name
  = liftDOM (((toHTMLCollection self) ! name) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.namedItem Mozilla HTMLCollection.namedItem documentation> 
namedItem_ ::
           (MonadDOM m, IsHTMLCollection self, ToJSString name) =>
             self -> name -> m ()
namedItem_ self name
  = liftDOM (void ((toHTMLCollection self) ! name))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.namedItem Mozilla HTMLCollection.namedItem documentation> 
namedItemUnsafe ::
                (MonadDOM m, IsHTMLCollection self, ToJSString name,
                 HasCallStack) =>
                  self -> name -> m Element
namedItemUnsafe self name
  = liftDOM
      ((((toHTMLCollection self) ! name) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.namedItem Mozilla HTMLCollection.namedItem documentation> 
namedItemUnchecked ::
                   (MonadDOM m, IsHTMLCollection self, ToJSString name) =>
                     self -> name -> m Element
namedItemUnchecked self name
  = liftDOM (((toHTMLCollection self) ! name) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.length Mozilla HTMLCollection.length documentation> 
getLength :: (MonadDOM m, IsHTMLCollection self) => self -> m Word
getLength self
  = liftDOM
      (round <$>
         (((toHTMLCollection self) ^. js "length") >>= valToNumber))
