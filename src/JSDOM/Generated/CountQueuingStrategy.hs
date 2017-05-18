{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CountQueuingStrategy
       (newCountQueuingStrategy, size, size_, CountQueuingStrategy(..),
        gTypeCountQueuingStrategy)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CountQueuingStrategy Mozilla CountQueuingStrategy documentation> 
newCountQueuingStrategy :: (MonadDOM m) => m CountQueuingStrategy
newCountQueuingStrategy
  = liftDOM
      (CountQueuingStrategy <$> new (jsg "CountQueuingStrategy") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CountQueuingStrategy.size Mozilla CountQueuingStrategy.size documentation> 
size :: (MonadDOM m) => CountQueuingStrategy -> m Double
size self = liftDOM ((self ^. jsf "size" ()) >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CountQueuingStrategy.size Mozilla CountQueuingStrategy.size documentation> 
size_ :: (MonadDOM m) => CountQueuingStrategy -> m ()
size_ self = liftDOM (void (self ^. jsf "size" ()))
