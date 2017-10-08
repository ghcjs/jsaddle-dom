{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.FontFace
       (newFontFace, load, load_, setFamily, getFamily, setStyle,
        getStyle, setWeight, getWeight, setStretch, getStretch,
        setUnicodeRange, getUnicodeRange, setVariant, getVariant,
        setFeatureSettings, getFeatureSettings, getStatus, getLoaded,
        FontFace(..), gTypeFontFace)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace Mozilla FontFace documentation> 
newFontFace ::
            (MonadDOM m, ToJSString family', IsStringOrBinaryData source) =>
              family' -> source -> Maybe FontFaceDescriptors -> m FontFace
newFontFace family' source descriptors
  = liftDOM
      (FontFace <$>
         new (jsg "FontFace")
           [toJSVal family', toJSVal source, toJSVal descriptors])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.load Mozilla FontFace.load documentation> 
load :: (MonadDOM m) => FontFace -> m FontFace
load self
  = liftDOM
      (((self ^. jsf "load" ()) >>= readPromise) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.load Mozilla FontFace.load documentation> 
load_ :: (MonadDOM m) => FontFace -> m ()
load_ self = liftDOM (void (self ^. jsf "load" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.family Mozilla FontFace.family documentation> 
setFamily ::
          (MonadDOM m, ToJSString val) => FontFace -> val -> m ()
setFamily self val = liftDOM (self ^. jss "family" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.family Mozilla FontFace.family documentation> 
getFamily ::
          (MonadDOM m, FromJSString result) => FontFace -> m result
getFamily self
  = liftDOM ((self ^. js "family") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.style Mozilla FontFace.style documentation> 
setStyle :: (MonadDOM m, ToJSString val) => FontFace -> val -> m ()
setStyle self val = liftDOM (self ^. jss "style" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.style Mozilla FontFace.style documentation> 
getStyle ::
         (MonadDOM m, FromJSString result) => FontFace -> m result
getStyle self
  = liftDOM ((self ^. js "style") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.weight Mozilla FontFace.weight documentation> 
setWeight ::
          (MonadDOM m, ToJSString val) => FontFace -> val -> m ()
setWeight self val = liftDOM (self ^. jss "weight" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.weight Mozilla FontFace.weight documentation> 
getWeight ::
          (MonadDOM m, FromJSString result) => FontFace -> m result
getWeight self
  = liftDOM ((self ^. js "weight") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.stretch Mozilla FontFace.stretch documentation> 
setStretch ::
           (MonadDOM m, ToJSString val) => FontFace -> val -> m ()
setStretch self val = liftDOM (self ^. jss "stretch" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.stretch Mozilla FontFace.stretch documentation> 
getStretch ::
           (MonadDOM m, FromJSString result) => FontFace -> m result
getStretch self
  = liftDOM ((self ^. js "stretch") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.unicodeRange Mozilla FontFace.unicodeRange documentation> 
setUnicodeRange ::
                (MonadDOM m, ToJSString val) => FontFace -> val -> m ()
setUnicodeRange self val
  = liftDOM (self ^. jss "unicodeRange" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.unicodeRange Mozilla FontFace.unicodeRange documentation> 
getUnicodeRange ::
                (MonadDOM m, FromJSString result) => FontFace -> m result
getUnicodeRange self
  = liftDOM ((self ^. js "unicodeRange") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.variant Mozilla FontFace.variant documentation> 
setVariant ::
           (MonadDOM m, ToJSString val) => FontFace -> val -> m ()
setVariant self val = liftDOM (self ^. jss "variant" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.variant Mozilla FontFace.variant documentation> 
getVariant ::
           (MonadDOM m, FromJSString result) => FontFace -> m result
getVariant self
  = liftDOM ((self ^. js "variant") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.featureSettings Mozilla FontFace.featureSettings documentation> 
setFeatureSettings ::
                   (MonadDOM m, ToJSString val) => FontFace -> val -> m ()
setFeatureSettings self val
  = liftDOM (self ^. jss "featureSettings" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.featureSettings Mozilla FontFace.featureSettings documentation> 
getFeatureSettings ::
                   (MonadDOM m, FromJSString result) => FontFace -> m result
getFeatureSettings self
  = liftDOM ((self ^. js "featureSettings") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.status Mozilla FontFace.status documentation> 
getStatus :: (MonadDOM m) => FontFace -> m FontFaceLoadStatus
getStatus self
  = liftDOM ((self ^. js "status") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFace.loaded Mozilla FontFace.loaded documentation> 
getLoaded :: (MonadDOM m) => FontFace -> m FontFace
getLoaded self
  = liftDOM
      (((self ^. js "loaded") >>= readPromise) >>= fromJSValUnchecked)
