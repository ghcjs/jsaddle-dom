{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.URL
       (newURL, newURL', newURL'', createObjectURL, createObjectURL_,
        createObjectURLUnchecked, revokeObjectURL, createObjectURLSource,
        createObjectURLSource_, createObjectURLSourceUnchecked,
        createObjectURLStream, createObjectURLStream_,
        createObjectURLStreamUnchecked, URL, castToURL, gTypeURL)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
newURL :: (MonadDOM m, ToJSString url) => url -> m URL
newURL url = liftDOM (URL <$> new (jsg "URL") [toJSVal url])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
newURL' ::
        (MonadDOM m, ToJSString url, ToJSString base) =>
          url -> base -> m URL
newURL' url base
  = liftDOM (URL <$> new (jsg "URL") [toJSVal url, toJSVal base])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
newURL'' ::
         (MonadDOM m, ToJSString url) => url -> Maybe URL -> m URL
newURL'' url base
  = liftDOM (URL <$> new (jsg "URL") [toJSVal url, toJSVal base])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURL ::
                (MonadDOM m, IsBlob blob, FromJSString result) =>
                  URL -> Maybe blob -> m (Maybe result)
createObjectURL self blob
  = liftDOM
      ((self ^. jsf "createObjectURL" [toJSVal blob]) >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURL_ ::
                 (MonadDOM m, IsBlob blob) => URL -> Maybe blob -> m ()
createObjectURL_ self blob
  = liftDOM (void (self ^. jsf "createObjectURL" [toJSVal blob]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLUnchecked ::
                         (MonadDOM m, IsBlob blob, FromJSString result) =>
                           URL -> Maybe blob -> m result
createObjectURLUnchecked self blob
  = liftDOM
      ((self ^. jsf "createObjectURL" [toJSVal blob]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.revokeObjectURL Mozilla URL.revokeObjectURL documentation> 
revokeObjectURL ::
                (MonadDOM m, ToJSString url) => URL -> url -> m ()
revokeObjectURL self url
  = liftDOM (void (self ^. jsf "revokeObjectURL" [toJSVal url]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLSource ::
                      (MonadDOM m, FromJSString result) =>
                        URL -> Maybe MediaSource -> m (Maybe result)
createObjectURLSource self source
  = liftDOM
      ((self ^. jsf "createObjectURL" [toJSVal source]) >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLSource_ ::
                       (MonadDOM m) => URL -> Maybe MediaSource -> m ()
createObjectURLSource_ self source
  = liftDOM (void (self ^. jsf "createObjectURL" [toJSVal source]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLSourceUnchecked ::
                               (MonadDOM m, FromJSString result) =>
                                 URL -> Maybe MediaSource -> m result
createObjectURLSourceUnchecked self source
  = liftDOM
      ((self ^. jsf "createObjectURL" [toJSVal source]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLStream ::
                      (MonadDOM m, FromJSString result) =>
                        URL -> Maybe MediaStream -> m (Maybe result)
createObjectURLStream self stream
  = liftDOM
      ((self ^. jsf "createObjectURL" [toJSVal stream]) >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLStream_ ::
                       (MonadDOM m) => URL -> Maybe MediaStream -> m ()
createObjectURLStream_ self stream
  = liftDOM (void (self ^. jsf "createObjectURL" [toJSVal stream]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLStreamUnchecked ::
                               (MonadDOM m, FromJSString result) =>
                                 URL -> Maybe MediaStream -> m result
createObjectURLStreamUnchecked self stream
  = liftDOM
      ((self ^. jsf "createObjectURL" [toJSVal stream]) >>=
         fromJSValUnchecked)
