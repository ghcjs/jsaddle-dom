{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.TextDecoder
       (newTextDecoder, decode, decode_, getEncoding, getFatal,
        getIgnoreBOM, TextDecoder(..), gTypeTextDecoder)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder Mozilla TextDecoder documentation> 
newTextDecoder ::
               (MonadDOM m, ToJSString label) =>
                 Maybe label -> Maybe TextDecoderOptions -> m TextDecoder
newTextDecoder label options
  = liftDOM
      (TextDecoder <$>
         new (jsg "TextDecoder") [toJSVal label, toJSVal options])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder.decode Mozilla TextDecoder.decode documentation> 
decode ::
       (MonadDOM m, IsBufferSource input, FromJSString result) =>
         TextDecoder -> Maybe input -> Maybe TextDecodeOptions -> m result
decode self input options
  = liftDOM
      ((self ^. jsf "decode" [toJSVal input, toJSVal options]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder.decode Mozilla TextDecoder.decode documentation> 
decode_ ::
        (MonadDOM m, IsBufferSource input) =>
          TextDecoder -> Maybe input -> Maybe TextDecodeOptions -> m ()
decode_ self input options
  = liftDOM
      (void (self ^. jsf "decode" [toJSVal input, toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder.encoding Mozilla TextDecoder.encoding documentation> 
getEncoding ::
            (MonadDOM m, FromJSString result) => TextDecoder -> m result
getEncoding self
  = liftDOM ((self ^. js "encoding") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder.fatal Mozilla TextDecoder.fatal documentation> 
getFatal :: (MonadDOM m) => TextDecoder -> m Bool
getFatal self = liftDOM ((self ^. js "fatal") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder.ignoreBOM Mozilla TextDecoder.ignoreBOM documentation> 
getIgnoreBOM :: (MonadDOM m) => TextDecoder -> m Bool
getIgnoreBOM self
  = liftDOM ((self ^. js "ignoreBOM") >>= valToBool)
