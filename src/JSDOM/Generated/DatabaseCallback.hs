{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DatabaseCallback
       (newDatabaseCallback, newDatabaseCallbackSync,
        newDatabaseCallbackAsync, DatabaseCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseCallback Mozilla DatabaseCallback documentation> 
newDatabaseCallback ::
                    (MonadDOM m) => (Database -> JSM ()) -> m DatabaseCallback
newDatabaseCallback callback
  = liftDOM
      (DatabaseCallback . Callback <$>
         function
           (\ _ _ [database] ->
              fromJSValUnchecked database >>= \ database' -> callback database'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseCallback Mozilla DatabaseCallback documentation> 
newDatabaseCallbackSync ::
                        (MonadDOM m) => (Database -> JSM ()) -> m DatabaseCallback
newDatabaseCallbackSync callback
  = liftDOM
      (DatabaseCallback . Callback <$>
         function
           (\ _ _ [database] ->
              fromJSValUnchecked database >>= \ database' -> callback database'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseCallback Mozilla DatabaseCallback documentation> 
newDatabaseCallbackAsync ::
                         (MonadDOM m) => (Database -> JSM ()) -> m DatabaseCallback
newDatabaseCallbackAsync callback
  = liftDOM
      (DatabaseCallback . Callback <$>
         function
           (\ _ _ [database] ->
              fromJSValUnchecked database >>= \ database' -> callback database'))
