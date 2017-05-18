{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Blob
       (newBlob, slice, slice_, getSize, getType, Blob(..), gTypeBlob,
        IsBlob, toBlob)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob Mozilla Blob documentation> 
newBlob ::
        (MonadDOM m, IsBlobPart blobParts, IsBlobPropertyBag options) =>
          [blobParts] -> Maybe options -> m Blob
newBlob blobParts options
  = liftDOM
      (Blob <$>
         new (jsg "Blob") [toJSVal (array blobParts), toJSVal options])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.slice Mozilla Blob.slice documentation> 
slice ::
      (MonadDOM m, IsBlob self, ToJSString contentType) =>
        self -> Maybe Int64 -> Maybe Int64 -> Maybe contentType -> m Blob
slice self start end contentType
  = liftDOM
      (((toBlob self) ^. jsf "slice"
          [maybe (return jsUndefined) integralToDoubleToJSVal start,
           maybe (return jsUndefined) integralToDoubleToJSVal end,
           toJSVal contentType])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.slice Mozilla Blob.slice documentation> 
slice_ ::
       (MonadDOM m, IsBlob self, ToJSString contentType) =>
         self -> Maybe Int64 -> Maybe Int64 -> Maybe contentType -> m ()
slice_ self start end contentType
  = liftDOM
      (void
         ((toBlob self) ^. jsf "slice"
            [maybe (return jsUndefined) integralToDoubleToJSVal start,
             maybe (return jsUndefined) integralToDoubleToJSVal end,
             toJSVal contentType]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.size Mozilla Blob.size documentation> 
getSize :: (MonadDOM m, IsBlob self) => self -> m Word64
getSize self
  = liftDOM
      (round <$> (((toBlob self) ^. js "size") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.type Mozilla Blob.type documentation> 
getType ::
        (MonadDOM m, IsBlob self, FromJSString result) => self -> m result
getType self
  = liftDOM (((toBlob self) ^. js "type") >>= fromJSValUnchecked)
