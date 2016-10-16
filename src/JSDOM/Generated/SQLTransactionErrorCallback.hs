{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SQLTransactionErrorCallback
       (newSQLTransactionErrorCallback,
        newSQLTransactionErrorCallbackSync,
        newSQLTransactionErrorCallbackAsync, SQLTransactionErrorCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
newSQLTransactionErrorCallback ::
                               (MonadDOM m) =>
                                 (Maybe SQLError -> JSM ()) -> m SQLTransactionErrorCallback
newSQLTransactionErrorCallback callback
  = liftDOM
      (SQLTransactionErrorCallback . Callback <$>
         function
           (\ _ _ [error] -> fromJSVal error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
newSQLTransactionErrorCallbackSync ::
                                   (MonadDOM m) =>
                                     (Maybe SQLError -> JSM ()) -> m SQLTransactionErrorCallback
newSQLTransactionErrorCallbackSync callback
  = liftDOM
      (SQLTransactionErrorCallback . Callback <$>
         function
           (\ _ _ [error] -> fromJSVal error >>= \ error' -> callback error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLTransactionErrorCallback Mozilla SQLTransactionErrorCallback documentation> 
newSQLTransactionErrorCallbackAsync ::
                                    (MonadDOM m) =>
                                      (Maybe SQLError -> JSM ()) -> m SQLTransactionErrorCallback
newSQLTransactionErrorCallbackAsync callback
  = liftDOM
      (SQLTransactionErrorCallback . Callback <$>
         function
           (\ _ _ [error] -> fromJSVal error >>= \ error' -> callback error'))
