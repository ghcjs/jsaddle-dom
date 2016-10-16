{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CSSValueList
       (item, item_, itemUnsafe, itemUnchecked, getLength,
        CSSValueList(..), gTypeCSSValueList, IsCSSValueList,
        toCSSValueList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValueList.item Mozilla CSSValueList.item documentation> 
item ::
     (MonadDOM m, IsCSSValueList self) =>
       self -> Word -> m (Maybe CSSValue)
item self index
  = liftDOM
      (((toCSSValueList self) ^. jsf "item" [toJSVal index]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValueList.item Mozilla CSSValueList.item documentation> 
item_ :: (MonadDOM m, IsCSSValueList self) => self -> Word -> m ()
item_ self index
  = liftDOM
      (void ((toCSSValueList self) ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValueList.item Mozilla CSSValueList.item documentation> 
itemUnsafe ::
           (MonadDOM m, IsCSSValueList self, HasCallStack) =>
             self -> Word -> m CSSValue
itemUnsafe self index
  = liftDOM
      ((((toCSSValueList self) ^. jsf "item" [toJSVal index]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValueList.item Mozilla CSSValueList.item documentation> 
itemUnchecked ::
              (MonadDOM m, IsCSSValueList self) => self -> Word -> m CSSValue
itemUnchecked self index
  = liftDOM
      (((toCSSValueList self) ^. jsf "item" [toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValueList.length Mozilla CSSValueList.length documentation> 
getLength :: (MonadDOM m, IsCSSValueList self) => self -> m Word
getLength self
  = liftDOM
      (round <$>
         (((toCSSValueList self) ^. js "length") >>= valToNumber))
