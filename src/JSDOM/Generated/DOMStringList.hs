{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DOMStringList
       (item, item_, itemUnsafe, itemUnchecked, contains, contains_,
        getLength, DOMStringList(..), gTypeDOMStringList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList.item Mozilla DOMStringList.item documentation> 
item ::
     (MonadDOM m, FromJSString result) =>
       DOMStringList -> Word -> m (Maybe result)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList.item Mozilla DOMStringList.item documentation> 
item_ :: (MonadDOM m) => DOMStringList -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList.item Mozilla DOMStringList.item documentation> 
itemUnsafe ::
           (MonadDOM m, HasCallStack, FromJSString result) =>
             DOMStringList -> Word -> m result
itemUnsafe self index
  = liftDOM
      (((self ^. jsf "item" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList.item Mozilla DOMStringList.item documentation> 
itemUnchecked ::
              (MonadDOM m, FromJSString result) =>
                DOMStringList -> Word -> m result
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList.contains Mozilla DOMStringList.contains documentation> 
contains ::
         (MonadDOM m, ToJSString string) =>
           DOMStringList -> string -> m Bool
contains self string
  = liftDOM ((self ^. jsf "contains" [toJSVal string]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList.contains Mozilla DOMStringList.contains documentation> 
contains_ ::
          (MonadDOM m, ToJSString string) => DOMStringList -> string -> m ()
contains_ self string
  = liftDOM (void (self ^. jsf "contains" [toJSVal string]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList.length Mozilla DOMStringList.length documentation> 
getLength :: (MonadDOM m) => DOMStringList -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
