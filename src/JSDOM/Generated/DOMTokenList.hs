{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DOMTokenList
       (item, item_, itemUnsafe, itemUnchecked, contains, contains_, add,
        remove, toggle, toggle_, replace, supports, supports_, getLength,
        setValue, getValue, DOMTokenList(..), gTypeDOMTokenList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.item Mozilla DOMTokenList.item documentation> 
item ::
     (MonadDOM m, FromJSString result) =>
       DOMTokenList -> Word -> m (Maybe result)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.item Mozilla DOMTokenList.item documentation> 
item_ :: (MonadDOM m) => DOMTokenList -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.item Mozilla DOMTokenList.item documentation> 
itemUnsafe ::
           (MonadDOM m, HasCallStack, FromJSString result) =>
             DOMTokenList -> Word -> m result
itemUnsafe self index
  = liftDOM
      (((self ^. jsf "item" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.item Mozilla DOMTokenList.item documentation> 
itemUnchecked ::
              (MonadDOM m, FromJSString result) =>
                DOMTokenList -> Word -> m result
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.contains Mozilla DOMTokenList.contains documentation> 
contains ::
         (MonadDOM m, ToJSString token) => DOMTokenList -> token -> m Bool
contains self token
  = liftDOM ((self ^. jsf "contains" [toJSVal token]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.contains Mozilla DOMTokenList.contains documentation> 
contains_ ::
          (MonadDOM m, ToJSString token) => DOMTokenList -> token -> m ()
contains_ self token
  = liftDOM (void (self ^. jsf "contains" [toJSVal token]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.add Mozilla DOMTokenList.add documentation> 
add ::
    (MonadDOM m, ToJSString tokens) => DOMTokenList -> [tokens] -> m ()
add self tokens
  = liftDOM (void (self ^. jsf "add" [toJSVal (array tokens)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.remove Mozilla DOMTokenList.remove documentation> 
remove ::
       (MonadDOM m, ToJSString tokens) => DOMTokenList -> [tokens] -> m ()
remove self tokens
  = liftDOM (void (self ^. jsf "remove" [toJSVal (array tokens)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.toggle Mozilla DOMTokenList.toggle documentation> 
toggle ::
       (MonadDOM m, ToJSString token) =>
         DOMTokenList -> token -> Bool -> m Bool
toggle self token force
  = liftDOM
      ((self ^. jsf "toggle" [toJSVal token, toJSVal force]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.toggle Mozilla DOMTokenList.toggle documentation> 
toggle_ ::
        (MonadDOM m, ToJSString token) =>
          DOMTokenList -> token -> Bool -> m ()
toggle_ self token force
  = liftDOM
      (void (self ^. jsf "toggle" [toJSVal token, toJSVal force]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.replace Mozilla DOMTokenList.replace documentation> 
replace ::
        (MonadDOM m, ToJSString token, ToJSString newToken) =>
          DOMTokenList -> token -> newToken -> m ()
replace self token newToken
  = liftDOM
      (void (self ^. jsf "replace" [toJSVal token, toJSVal newToken]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.supports Mozilla DOMTokenList.supports documentation> 
supports ::
         (MonadDOM m, ToJSString token) => DOMTokenList -> token -> m Bool
supports self token
  = liftDOM ((self ^. jsf "supports" [toJSVal token]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.supports Mozilla DOMTokenList.supports documentation> 
supports_ ::
          (MonadDOM m, ToJSString token) => DOMTokenList -> token -> m ()
supports_ self token
  = liftDOM (void (self ^. jsf "supports" [toJSVal token]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.length Mozilla DOMTokenList.length documentation> 
getLength :: (MonadDOM m) => DOMTokenList -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.value Mozilla DOMTokenList.value documentation> 
setValue ::
         (MonadDOM m, ToJSString val) => DOMTokenList -> val -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.value Mozilla DOMTokenList.value documentation> 
getValue ::
         (MonadDOM m, FromJSString result) => DOMTokenList -> m result
getValue self
  = liftDOM ((self ^. js "value") >>= fromJSValUnchecked)
