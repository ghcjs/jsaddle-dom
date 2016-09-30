{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.URL
       (newURL, newURL', newURL'', createObjectURL, revokeObjectURL,
        createObjectURLSource, createObjectURLStream, URL, castToURL,
        gTypeURL)
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
createObjectURLStream ::
                      (MonadDOM m, FromJSString result) =>
                        URL -> Maybe MediaStream -> m (Maybe result)
createObjectURLStream self stream
  = liftDOM
      ((self ^. jsf "createObjectURL" [toJSVal stream]) >>=
         fromMaybeJSString)
