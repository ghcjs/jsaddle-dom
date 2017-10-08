{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLOptionsCollection
       (addBefore, remove, item, item_, itemUnsafe, itemUnchecked,
        namedItem, namedItem_, namedItemUnsafe, namedItemUnchecked,
        setLength, getLength, setSelectedIndex, getSelectedIndex,
        HTMLOptionsCollection(..), gTypeHTMLOptionsCollection)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.add Mozilla HTMLOptionsCollection.add documentation> 
addBefore ::
          (MonadDOM m, IsHTMLOptionElementOrGroup element,
           IsHTMLElementOrLong before) =>
            HTMLOptionsCollection -> element -> Maybe before -> m ()
addBefore self element before
  = liftDOM
      (void (self ^. jsf "add" [toJSVal element, toJSVal before]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.remove Mozilla HTMLOptionsCollection.remove documentation> 
remove :: (MonadDOM m) => HTMLOptionsCollection -> Int -> m ()
remove self index
  = liftDOM (void (self ^. jsf "remove" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.item Mozilla HTMLOptionsCollection.item documentation> 
item ::
     (MonadDOM m) =>
       HTMLOptionsCollection -> Word -> m (Maybe HTMLOptionElement)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.item Mozilla HTMLOptionsCollection.item documentation> 
item_ :: (MonadDOM m) => HTMLOptionsCollection -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.item Mozilla HTMLOptionsCollection.item documentation> 
itemUnsafe ::
           (MonadDOM m, HasCallStack) =>
             HTMLOptionsCollection -> Word -> m HTMLOptionElement
itemUnsafe self index
  = liftDOM
      (((self ^. jsf "item" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.item Mozilla HTMLOptionsCollection.item documentation> 
itemUnchecked ::
              (MonadDOM m) =>
                HTMLOptionsCollection -> Word -> m HTMLOptionElement
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.namedItem Mozilla HTMLOptionsCollection.namedItem documentation> 
namedItem ::
          (MonadDOM m, ToJSString name) =>
            HTMLOptionsCollection -> name -> m (Maybe HTMLOptionElement)
namedItem self name = liftDOM ((self ! name) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.namedItem Mozilla HTMLOptionsCollection.namedItem documentation> 
namedItem_ ::
           (MonadDOM m, ToJSString name) =>
             HTMLOptionsCollection -> name -> m ()
namedItem_ self name = liftDOM (void (self ! name))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.namedItem Mozilla HTMLOptionsCollection.namedItem documentation> 
namedItemUnsafe ::
                (MonadDOM m, ToJSString name, HasCallStack) =>
                  HTMLOptionsCollection -> name -> m HTMLOptionElement
namedItemUnsafe self name
  = liftDOM
      (((self ! name) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.namedItem Mozilla HTMLOptionsCollection.namedItem documentation> 
namedItemUnchecked ::
                   (MonadDOM m, ToJSString name) =>
                     HTMLOptionsCollection -> name -> m HTMLOptionElement
namedItemUnchecked self name
  = liftDOM ((self ! name) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.length Mozilla HTMLOptionsCollection.length documentation> 
setLength :: (MonadDOM m) => HTMLOptionsCollection -> Word -> m ()
setLength self val = liftDOM (self ^. jss "length" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.length Mozilla HTMLOptionsCollection.length documentation> 
getLength :: (MonadDOM m) => HTMLOptionsCollection -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.selectedIndex Mozilla HTMLOptionsCollection.selectedIndex documentation> 
setSelectedIndex ::
                 (MonadDOM m) => HTMLOptionsCollection -> Int -> m ()
setSelectedIndex self val
  = liftDOM (self ^. jss "selectedIndex" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.selectedIndex Mozilla HTMLOptionsCollection.selectedIndex documentation> 
getSelectedIndex :: (MonadDOM m) => HTMLOptionsCollection -> m Int
getSelectedIndex self
  = liftDOM
      (round <$> ((self ^. js "selectedIndex") >>= valToNumber))
