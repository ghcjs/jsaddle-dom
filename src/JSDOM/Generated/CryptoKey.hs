{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CryptoKey
       (getType, getExtractable, getAlgorithm, getUsages, CryptoKey,
        castToCryptoKey, gTypeCryptoKey)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKey.type Mozilla CryptoKey.type documentation> 
getType :: (MonadDOM m) => CryptoKey -> m KeyType
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKey.extractable Mozilla CryptoKey.extractable documentation> 
getExtractable :: (MonadDOM m) => CryptoKey -> m Bool
getExtractable self
  = liftDOM ((self ^. js "extractable") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKey.algorithm Mozilla CryptoKey.algorithm documentation> 
getAlgorithm :: (MonadDOM m) => CryptoKey -> m (Maybe Algorithm)
getAlgorithm self
  = liftDOM ((self ^. js "algorithm") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKey.usages Mozilla CryptoKey.usages documentation> 
getUsages :: (MonadDOM m) => CryptoKey -> m [KeyUsage]
getUsages self
  = liftDOM ((self ^. js "usages") >>= fromJSArrayUnchecked)
