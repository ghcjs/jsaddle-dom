{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.NodeList
       (item, item_, itemUnsafe, itemUnchecked, getLength, NodeList(..),
        gTypeNodeList, IsNodeList, toNodeList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeList.item Mozilla NodeList.item documentation> 
item ::
     (MonadDOM m, IsNodeList self) => self -> Word -> m (Maybe Node)
item self index
  = liftDOM
      (((toNodeList self) ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeList.item Mozilla NodeList.item documentation> 
item_ :: (MonadDOM m, IsNodeList self) => self -> Word -> m ()
item_ self index
  = liftDOM (void ((toNodeList self) ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeList.item Mozilla NodeList.item documentation> 
itemUnsafe ::
           (MonadDOM m, IsNodeList self, HasCallStack) =>
             self -> Word -> m Node
itemUnsafe self index
  = liftDOM
      ((((toNodeList self) ^. jsf "item" [toJSVal index]) >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeList.item Mozilla NodeList.item documentation> 
itemUnchecked ::
              (MonadDOM m, IsNodeList self) => self -> Word -> m Node
itemUnchecked self index
  = liftDOM
      (((toNodeList self) ^. jsf "item" [toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeList.length Mozilla NodeList.length documentation> 
getLength :: (MonadDOM m, IsNodeList self) => self -> m Word
getLength self
  = liftDOM
      (round <$> (((toNodeList self) ^. js "length") >>= valToNumber))
