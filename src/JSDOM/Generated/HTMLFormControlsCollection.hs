{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLFormControlsCollection
       (_get, _get_, _getUnsafe, _getUnchecked, namedItem, namedItem_,
        namedItemUnsafe, namedItemUnchecked,
        HTMLFormControlsCollection(..), gTypeHTMLFormControlsCollection)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection._get Mozilla HTMLFormControlsCollection._get documentation> 
_get ::
     (MonadDOM m) =>
       HTMLFormControlsCollection -> Word -> m (Maybe Node)
_get self index
  = liftDOM ((self ^. jsf "_get" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection._get Mozilla HTMLFormControlsCollection._get documentation> 
_get_ :: (MonadDOM m) => HTMLFormControlsCollection -> Word -> m ()
_get_ self index
  = liftDOM (void (self ^. jsf "_get" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection._get Mozilla HTMLFormControlsCollection._get documentation> 
_getUnsafe ::
           (MonadDOM m, HasCallStack) =>
             HTMLFormControlsCollection -> Word -> m Node
_getUnsafe self index
  = liftDOM
      (((self ^. jsf "_get" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection._get Mozilla HTMLFormControlsCollection._get documentation> 
_getUnchecked ::
              (MonadDOM m) => HTMLFormControlsCollection -> Word -> m Node
_getUnchecked self index
  = liftDOM
      ((self ^. jsf "_get" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.namedItem Mozilla HTMLFormControlsCollection.namedItem documentation> 
namedItem ::
          (MonadDOM m, ToJSString name) =>
            HTMLFormControlsCollection -> name -> m (Maybe Node)
namedItem self name
  = liftDOM ((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.namedItem Mozilla HTMLFormControlsCollection.namedItem documentation> 
namedItem_ ::
           (MonadDOM m, ToJSString name) =>
             HTMLFormControlsCollection -> name -> m ()
namedItem_ self name
  = liftDOM (void (self ^. jsf "namedItem" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.namedItem Mozilla HTMLFormControlsCollection.namedItem documentation> 
namedItemUnsafe ::
                (MonadDOM m, ToJSString name, HasCallStack) =>
                  HTMLFormControlsCollection -> name -> m Node
namedItemUnsafe self name
  = liftDOM
      (((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.namedItem Mozilla HTMLFormControlsCollection.namedItem documentation> 
namedItemUnchecked ::
                   (MonadDOM m, ToJSString name) =>
                     HTMLFormControlsCollection -> name -> m Node
namedItemUnchecked self name
  = liftDOM
      ((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSValUnchecked)
