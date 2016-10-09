{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Entity
       (getPublicId, getPublicIdUnchecked, getSystemId,
        getSystemIdUnchecked, getNotationName, getNotationNameUnchecked,
        Entity, castToEntity, gTypeEntity)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Entity.publicId Mozilla Entity.publicId documentation> 
getPublicId ::
            (MonadDOM m, FromJSString result) => Entity -> m (Maybe result)
getPublicId self
  = liftDOM ((self ^. js "publicId") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Entity.publicId Mozilla Entity.publicId documentation> 
getPublicIdUnchecked ::
                     (MonadDOM m, FromJSString result) => Entity -> m result
getPublicIdUnchecked self
  = liftDOM ((self ^. js "publicId") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Entity.systemId Mozilla Entity.systemId documentation> 
getSystemId ::
            (MonadDOM m, FromJSString result) => Entity -> m (Maybe result)
getSystemId self
  = liftDOM ((self ^. js "systemId") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Entity.systemId Mozilla Entity.systemId documentation> 
getSystemIdUnchecked ::
                     (MonadDOM m, FromJSString result) => Entity -> m result
getSystemIdUnchecked self
  = liftDOM ((self ^. js "systemId") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Entity.notationName Mozilla Entity.notationName documentation> 
getNotationName ::
                (MonadDOM m, FromJSString result) => Entity -> m (Maybe result)
getNotationName self
  = liftDOM ((self ^. js "notationName") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Entity.notationName Mozilla Entity.notationName documentation> 
getNotationNameUnchecked ::
                         (MonadDOM m, FromJSString result) => Entity -> m result
getNotationNameUnchecked self
  = liftDOM ((self ^. js "notationName") >>= fromJSValUnchecked)
