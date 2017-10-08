{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.StyleSheetList
       (item, item_, itemUnsafe, itemUnchecked, get, get_, getLength,
        StyleSheetList(..), gTypeStyleSheetList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.item Mozilla StyleSheetList.item documentation> 
item ::
     (MonadDOM m) => StyleSheetList -> Word -> m (Maybe StyleSheet)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.item Mozilla StyleSheetList.item documentation> 
item_ :: (MonadDOM m) => StyleSheetList -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.item Mozilla StyleSheetList.item documentation> 
itemUnsafe ::
           (MonadDOM m, HasCallStack) =>
             StyleSheetList -> Word -> m StyleSheet
itemUnsafe self index
  = liftDOM
      (((self ^. jsf "item" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.item Mozilla StyleSheetList.item documentation> 
itemUnchecked ::
              (MonadDOM m) => StyleSheetList -> Word -> m StyleSheet
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.get Mozilla StyleSheetList.get documentation> 
get ::
    (MonadDOM m, ToJSString name) =>
      StyleSheetList -> name -> m CSSStyleSheet
get self name = liftDOM ((self ! name) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.get Mozilla StyleSheetList.get documentation> 
get_ ::
     (MonadDOM m, ToJSString name) => StyleSheetList -> name -> m ()
get_ self name = liftDOM (void (self ! name))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.length Mozilla StyleSheetList.length documentation> 
getLength :: (MonadDOM m) => StyleSheetList -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
