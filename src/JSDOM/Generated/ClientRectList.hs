{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ClientRectList
       (item, item_, itemUnchecked, getLength, ClientRectList,
        castToClientRectList, gTypeClientRectList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRectList.item Mozilla ClientRectList.item documentation> 
item ::
     (MonadDOM m) => ClientRectList -> Word -> m (Maybe ClientRect)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRectList.item Mozilla ClientRectList.item documentation> 
item_ :: (MonadDOM m) => ClientRectList -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRectList.item Mozilla ClientRectList.item documentation> 
itemUnchecked ::
              (MonadDOM m) => ClientRectList -> Word -> m ClientRect
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRectList.length Mozilla ClientRectList.length documentation> 
getLength :: (MonadDOM m) => ClientRectList -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
