{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CloseEvent
       (newCloseEvent, getWasClean, getCode, getReason, CloseEvent(..),
        gTypeCloseEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent Mozilla CloseEvent documentation> 
newCloseEvent ::
              (MonadDOM m, ToJSString type') =>
                type' -> Maybe CloseEventInit -> m CloseEvent
newCloseEvent type' eventInitDict
  = liftDOM
      (CloseEvent <$>
         new (jsg "CloseEvent") [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent.wasClean Mozilla CloseEvent.wasClean documentation> 
getWasClean :: (MonadDOM m) => CloseEvent -> m Bool
getWasClean self = liftDOM ((self ^. js "wasClean") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent.code Mozilla CloseEvent.code documentation> 
getCode :: (MonadDOM m) => CloseEvent -> m Word
getCode self
  = liftDOM (round <$> ((self ^. js "code") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent.reason Mozilla CloseEvent.reason documentation> 
getReason ::
          (MonadDOM m, FromJSString result) => CloseEvent -> m result
getReason self
  = liftDOM ((self ^. js "reason") >>= fromJSValUnchecked)
