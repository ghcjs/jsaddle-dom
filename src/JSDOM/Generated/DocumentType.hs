{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DocumentType
       (getName, getEntities, getEntitiesUnsafe, getEntitiesUnchecked,
        getNotations, getNotationsUnsafe, getNotationsUnchecked,
        getPublicId, getPublicIdUnsafe, getPublicIdUnchecked, getSystemId,
        getSystemIdUnsafe, getSystemIdUnchecked, getInternalSubset,
        getInternalSubsetUnsafe, getInternalSubsetUnchecked,
        DocumentType(..), gTypeDocumentType)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.name Mozilla DocumentType.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => DocumentType -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.entities Mozilla DocumentType.entities documentation> 
getEntities ::
            (MonadDOM m) => DocumentType -> m (Maybe NamedNodeMap)
getEntities self = liftDOM ((self ^. js "entities") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.entities Mozilla DocumentType.entities documentation> 
getEntitiesUnsafe ::
                  (MonadDOM m, HasCallStack) => DocumentType -> m NamedNodeMap
getEntitiesUnsafe self
  = liftDOM
      (((self ^. js "entities") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.entities Mozilla DocumentType.entities documentation> 
getEntitiesUnchecked ::
                     (MonadDOM m) => DocumentType -> m NamedNodeMap
getEntitiesUnchecked self
  = liftDOM ((self ^. js "entities") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.notations Mozilla DocumentType.notations documentation> 
getNotations ::
             (MonadDOM m) => DocumentType -> m (Maybe NamedNodeMap)
getNotations self
  = liftDOM ((self ^. js "notations") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.notations Mozilla DocumentType.notations documentation> 
getNotationsUnsafe ::
                   (MonadDOM m, HasCallStack) => DocumentType -> m NamedNodeMap
getNotationsUnsafe self
  = liftDOM
      (((self ^. js "notations") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.notations Mozilla DocumentType.notations documentation> 
getNotationsUnchecked ::
                      (MonadDOM m) => DocumentType -> m NamedNodeMap
getNotationsUnchecked self
  = liftDOM ((self ^. js "notations") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.publicId Mozilla DocumentType.publicId documentation> 
getPublicId ::
            (MonadDOM m, FromJSString result) =>
              DocumentType -> m (Maybe result)
getPublicId self
  = liftDOM ((self ^. js "publicId") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.publicId Mozilla DocumentType.publicId documentation> 
getPublicIdUnsafe ::
                  (MonadDOM m, HasCallStack, FromJSString result) =>
                    DocumentType -> m result
getPublicIdUnsafe self
  = liftDOM
      (((self ^. js "publicId") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.publicId Mozilla DocumentType.publicId documentation> 
getPublicIdUnchecked ::
                     (MonadDOM m, FromJSString result) => DocumentType -> m result
getPublicIdUnchecked self
  = liftDOM ((self ^. js "publicId") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.systemId Mozilla DocumentType.systemId documentation> 
getSystemId ::
            (MonadDOM m, FromJSString result) =>
              DocumentType -> m (Maybe result)
getSystemId self
  = liftDOM ((self ^. js "systemId") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.systemId Mozilla DocumentType.systemId documentation> 
getSystemIdUnsafe ::
                  (MonadDOM m, HasCallStack, FromJSString result) =>
                    DocumentType -> m result
getSystemIdUnsafe self
  = liftDOM
      (((self ^. js "systemId") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.systemId Mozilla DocumentType.systemId documentation> 
getSystemIdUnchecked ::
                     (MonadDOM m, FromJSString result) => DocumentType -> m result
getSystemIdUnchecked self
  = liftDOM ((self ^. js "systemId") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.internalSubset Mozilla DocumentType.internalSubset documentation> 
getInternalSubset ::
                  (MonadDOM m, FromJSString result) =>
                    DocumentType -> m (Maybe result)
getInternalSubset self
  = liftDOM ((self ^. js "internalSubset") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.internalSubset Mozilla DocumentType.internalSubset documentation> 
getInternalSubsetUnsafe ::
                        (MonadDOM m, HasCallStack, FromJSString result) =>
                          DocumentType -> m result
getInternalSubsetUnsafe self
  = liftDOM
      (((self ^. js "internalSubset") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.internalSubset Mozilla DocumentType.internalSubset documentation> 
getInternalSubsetUnchecked ::
                           (MonadDOM m, FromJSString result) => DocumentType -> m result
getInternalSubsetUnchecked self
  = liftDOM ((self ^. js "internalSubset") >>= fromJSValUnchecked)
