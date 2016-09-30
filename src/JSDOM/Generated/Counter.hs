{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Counter
       (getIdentifier, getListStyle, getSeparator, Counter, castToCounter,
        gTypeCounter)
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
