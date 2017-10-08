{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Counter
       (getIdentifier, getListStyle, getSeparator, Counter(..),
        gTypeCounter)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, asyncFunction, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Counter.identifier Mozilla Counter.identifier documentation> 
getIdentifier ::
              (MonadDOM m, FromJSString result) => Counter -> m result
getIdentifier self
  = liftDOM ((self ^. js "identifier") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Counter.listStyle Mozilla Counter.listStyle documentation> 
getListStyle ::
             (MonadDOM m, FromJSString result) => Counter -> m result
getListStyle self
  = liftDOM ((self ^. js "listStyle") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Counter.separator Mozilla Counter.separator documentation> 
getSeparator ::
             (MonadDOM m, FromJSString result) => Counter -> m result
getSeparator self
  = liftDOM ((self ^. js "separator") >>= fromJSValUnchecked)
