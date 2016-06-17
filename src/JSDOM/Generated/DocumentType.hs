{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.DocumentType
       (getName, getEntities, getNotations, getPublicId, getSystemId,
        getInternalSubset, DocumentType, castToDocumentType,
        gTypeDocumentType)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.name Mozilla DocumentType.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => DocumentType -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.entities Mozilla DocumentType.entities documentation> 
getEntities ::
            (MonadDOM m) => DocumentType -> m (Maybe NamedNodeMap)
getEntities self = liftDOM ((self ^. js "entities") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.notations Mozilla DocumentType.notations documentation> 
getNotations ::
             (MonadDOM m) => DocumentType -> m (Maybe NamedNodeMap)
getNotations self
  = liftDOM ((self ^. js "notations") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.publicId Mozilla DocumentType.publicId documentation> 
getPublicId ::
            (MonadDOM m, FromJSString result) =>
              DocumentType -> m (Maybe result)
getPublicId self
  = liftDOM ((self ^. js "publicId") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.systemId Mozilla DocumentType.systemId documentation> 
getSystemId ::
            (MonadDOM m, FromJSString result) =>
              DocumentType -> m (Maybe result)
getSystemId self
  = liftDOM ((self ^. js "systemId") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.internalSubset Mozilla DocumentType.internalSubset documentation> 
getInternalSubset ::
                  (MonadDOM m, FromJSString result) =>
                    DocumentType -> m (Maybe result)
getInternalSubset self
  = liftDOM ((self ^. js "internalSubset") >>= fromMaybeJSString)
