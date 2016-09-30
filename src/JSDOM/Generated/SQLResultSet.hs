{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SQLResultSet
       (getRows, getInsertId, getRowsAffected, SQLResultSet,
        castToSQLResultSet, gTypeSQLResultSet)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSet.rows Mozilla SQLResultSet.rows documentation> 
getRows ::
        (MonadDOM m) => SQLResultSet -> m (Maybe SQLResultSetRowList)
getRows self = liftDOM ((self ^. js "rows") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSet.insertId Mozilla SQLResultSet.insertId documentation> 
getInsertId :: (MonadDOM m) => SQLResultSet -> m Int
getInsertId self
  = liftDOM (round <$> ((self ^. js "insertId") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSet.rowsAffected Mozilla SQLResultSet.rowsAffected documentation> 
getRowsAffected :: (MonadDOM m) => SQLResultSet -> m Int
getRowsAffected self
  = liftDOM (round <$> ((self ^. js "rowsAffected") >>= valToNumber))
