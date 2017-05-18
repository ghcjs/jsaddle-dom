{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.TextEncoder
       (newTextEncoder, encode, encode_, getEncoding, TextEncoder(..),
        gTypeTextEncoder)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder Mozilla TextEncoder documentation> 
newTextEncoder :: (MonadDOM m) => m TextEncoder
newTextEncoder
  = liftDOM (TextEncoder <$> new (jsg "TextEncoder") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder.encode Mozilla TextEncoder.encode documentation> 
encode ::
       (MonadDOM m, ToJSString input) =>
         TextEncoder -> Maybe input -> m Uint8Array
encode self input
  = liftDOM
      ((self ^. jsf "encode" [toJSVal input]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder.encode Mozilla TextEncoder.encode documentation> 
encode_ ::
        (MonadDOM m, ToJSString input) =>
          TextEncoder -> Maybe input -> m ()
encode_ self input
  = liftDOM (void (self ^. jsf "encode" [toJSVal input]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder.encoding Mozilla TextEncoder.encoding documentation> 
getEncoding ::
            (MonadDOM m, FromJSString result) => TextEncoder -> m result
getEncoding self
  = liftDOM ((self ^. js "encoding") >>= fromJSValUnchecked)
