{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.PageTransitionEvent
       (newPageTransitionEvent, getPersisted, PageTransitionEvent(..),
        gTypePageTransitionEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PageTransitionEvent Mozilla PageTransitionEvent documentation> 
newPageTransitionEvent ::
                       (MonadDOM m, ToJSString type') =>
                         type' -> Maybe PageTransitionEventInit -> m PageTransitionEvent
newPageTransitionEvent type' eventInitDict
  = liftDOM
      (PageTransitionEvent <$>
         new (jsg "PageTransitionEvent")
           [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PageTransitionEvent.persisted Mozilla PageTransitionEvent.persisted documentation> 
getPersisted :: (MonadDOM m) => PageTransitionEvent -> m Bool
getPersisted self
  = liftDOM ((self ^. js "persisted") >>= valToBool)
