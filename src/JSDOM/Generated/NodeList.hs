{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.NodeList
       (item, getLength, NodeList, castToNodeList, gTypeNodeList,
        IsNodeList, toNodeList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeList.item Mozilla NodeList.item documentation> 
item ::
     (MonadDOM m, IsNodeList self) => self -> Word -> m (Maybe Node)
item self index
  = liftDOM
      (((toNodeList self) ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeList.length Mozilla NodeList.length documentation> 
getLength :: (MonadDOM m, IsNodeList self) => self -> m Word
getLength self
  = liftDOM
      (round <$> (((toNodeList self) ^. js "length") >>= valToNumber))
