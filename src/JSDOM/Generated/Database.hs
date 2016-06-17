{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.Database
       (changeVersion, transaction, readTransaction, getVersion, Database,
        castToDatabase, gTypeDatabase)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.changeVersion Mozilla Database.changeVersion documentation> 
changeVersion ::
              (MonadDOM m, ToJSString oldVersion, ToJSString newVersion) =>
                Database ->
                  oldVersion ->
                    newVersion ->
                      Maybe SQLTransactionCallback ->
                        Maybe SQLTransactionErrorCallback -> Maybe VoidCallback -> m ()
changeVersion self oldVersion newVersion callback errorCallback
  successCallback
  = liftDOM
      (void
         (self ^. jsf "changeVersion"
            [toJSVal oldVersion, toJSVal newVersion, toJSVal callback,
             toJSVal errorCallback, toJSVal successCallback]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.transaction Mozilla Database.transaction documentation> 
transaction ::
            (MonadDOM m) =>
              Database ->
                Maybe SQLTransactionCallback ->
                  Maybe SQLTransactionErrorCallback -> Maybe VoidCallback -> m ()
transaction self callback errorCallback successCallback
  = liftDOM
      (void
         (self ^. jsf "transaction"
            [toJSVal callback, toJSVal errorCallback,
             toJSVal successCallback]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.readTransaction Mozilla Database.readTransaction documentation> 
readTransaction ::
                (MonadDOM m) =>
                  Database ->
                    Maybe SQLTransactionCallback ->
                      Maybe SQLTransactionErrorCallback -> Maybe VoidCallback -> m ()
readTransaction self callback errorCallback successCallback
  = liftDOM
      (void
         (self ^. jsf "readTransaction"
            [toJSVal callback, toJSVal errorCallback,
             toJSVal successCallback]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Database.version Mozilla Database.version documentation> 
getVersion ::
           (MonadDOM m, FromJSString result) => Database -> m result
getVersion self
  = liftDOM ((self ^. js "version") >>= fromJSValUnchecked)
