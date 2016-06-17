{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.SQLResultSetRowList
       (item, getLength, SQLResultSetRowList, castToSQLResultSetRowList,
        gTypeSQLResultSetRowList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSetRowList.item Mozilla SQLResultSetRowList.item documentation> 
item :: (MonadDOM m) => SQLResultSetRowList -> Word -> m JSVal
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSetRowList.length Mozilla SQLResultSetRowList.length documentation> 
getLength :: (MonadDOM m) => SQLResultSetRowList -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
