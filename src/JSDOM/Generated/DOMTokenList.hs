{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DOMTokenList
       (item, item_, itemUnsafe, itemUnchecked, contains, contains_, add,
        remove, toggle, toggle_, toString, toString_, getLength,
        DOMTokenList(..), gTypeDOMTokenList, IsDOMTokenList,
        toDOMTokenList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.item Mozilla DOMTokenList.item documentation> 
item ::
     (MonadDOM m, IsDOMTokenList self, FromJSString result) =>
       self -> Word -> m (Maybe result)
item self index
  = liftDOM
      (((toDOMTokenList self) ^. jsf "item" [toJSVal index]) >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.item Mozilla DOMTokenList.item documentation> 
item_ :: (MonadDOM m, IsDOMTokenList self) => self -> Word -> m ()
item_ self index
  = liftDOM
      (void ((toDOMTokenList self) ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.item Mozilla DOMTokenList.item documentation> 
itemUnsafe ::
           (MonadDOM m, IsDOMTokenList self, HasCallStack,
            FromJSString result) =>
             self -> Word -> m result
itemUnsafe self index
  = liftDOM
      ((((toDOMTokenList self) ^. jsf "item" [toJSVal index]) >>=
          fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.item Mozilla DOMTokenList.item documentation> 
itemUnchecked ::
              (MonadDOM m, IsDOMTokenList self, FromJSString result) =>
                self -> Word -> m result
itemUnchecked self index
  = liftDOM
      (((toDOMTokenList self) ^. jsf "item" [toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.contains Mozilla DOMTokenList.contains documentation> 
contains ::
         (MonadDOM m, IsDOMTokenList self, ToJSString token) =>
           self -> token -> m Bool
contains self token
  = liftDOM
      (((toDOMTokenList self) ^. jsf "contains" [toJSVal token]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.contains Mozilla DOMTokenList.contains documentation> 
contains_ ::
          (MonadDOM m, IsDOMTokenList self, ToJSString token) =>
            self -> token -> m ()
contains_ self token
  = liftDOM
      (void ((toDOMTokenList self) ^. jsf "contains" [toJSVal token]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.add Mozilla DOMTokenList.add documentation> 
add ::
    (MonadDOM m, IsDOMTokenList self, ToJSString tokens,
     ToJSVal tokens) =>
      self -> [tokens] -> m ()
add self tokens
  = liftDOM
      (void
         ((toDOMTokenList self) ^. jsf "add" [toJSVal (array tokens)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.remove Mozilla DOMTokenList.remove documentation> 
remove ::
       (MonadDOM m, IsDOMTokenList self, ToJSString tokens,
        ToJSVal tokens) =>
         self -> [tokens] -> m ()
remove self tokens
  = liftDOM
      (void
         ((toDOMTokenList self) ^. jsf "remove" [toJSVal (array tokens)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.toggle Mozilla DOMTokenList.toggle documentation> 
toggle ::
       (MonadDOM m, IsDOMTokenList self, ToJSString token) =>
         self -> token -> Bool -> m Bool
toggle self token force
  = liftDOM
      (((toDOMTokenList self) ^. jsf "toggle"
          [toJSVal token, toJSVal force])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.toggle Mozilla DOMTokenList.toggle documentation> 
toggle_ ::
        (MonadDOM m, IsDOMTokenList self, ToJSString token) =>
          self -> token -> Bool -> m ()
toggle_ self token force
  = liftDOM
      (void
         ((toDOMTokenList self) ^. jsf "toggle"
            [toJSVal token, toJSVal force]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.toString Mozilla DOMTokenList.toString documentation> 
toString ::
         (MonadDOM m, IsDOMTokenList self, FromJSString result) =>
           self -> m result
toString self
  = liftDOM
      (((toDOMTokenList self) ^. jsf "toString" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.toString Mozilla DOMTokenList.toString documentation> 
toString_ :: (MonadDOM m, IsDOMTokenList self) => self -> m ()
toString_ self
  = liftDOM (void ((toDOMTokenList self) ^. jsf "toString" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.length Mozilla DOMTokenList.length documentation> 
getLength :: (MonadDOM m, IsDOMTokenList self) => self -> m Word
getLength self
  = liftDOM
      (round <$>
         (((toDOMTokenList self) ^. js "length") >>= valToNumber))
