{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SourceBufferList
       (item, item_, itemUnsafe, itemUnchecked, getLength,
        SourceBufferList(..), gTypeSourceBufferList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.item Mozilla SourceBufferList.item documentation> 
item ::
     (MonadDOM m) => SourceBufferList -> Word -> m (Maybe SourceBuffer)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.item Mozilla SourceBufferList.item documentation> 
item_ :: (MonadDOM m) => SourceBufferList -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.item Mozilla SourceBufferList.item documentation> 
itemUnsafe ::
           (MonadDOM m, HasCallStack) =>
             SourceBufferList -> Word -> m SourceBuffer
itemUnsafe self index
  = liftDOM
      (((self ^. jsf "item" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.item Mozilla SourceBufferList.item documentation> 
itemUnchecked ::
              (MonadDOM m) => SourceBufferList -> Word -> m SourceBuffer
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.length Mozilla SourceBufferList.length documentation> 
getLength :: (MonadDOM m) => SourceBufferList -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
