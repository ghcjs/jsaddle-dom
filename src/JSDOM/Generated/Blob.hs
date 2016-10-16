{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Blob
       (newBlob, newBlob', slice, slice_, sliceUnsafe, sliceUnchecked,
        getSize, getType, Blob(..), gTypeBlob, IsBlob, toBlob)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob Mozilla Blob documentation> 
newBlob :: (MonadDOM m) => m Blob
newBlob = liftDOM (Blob <$> new (jsg "Blob") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob Mozilla Blob documentation> 
newBlob' ::
         (MonadDOM m, IsBlobPropertyBag options) =>
           [JSVal] -> Maybe options -> m Blob
newBlob' blobParts options
  = liftDOM
      (Blob <$>
         new (jsg "Blob") [toJSVal (array blobParts), toJSVal options])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.slice Mozilla Blob.slice documentation> 
slice ::
      (MonadDOM m, IsBlob self, ToJSString contentType) =>
        self -> Int64 -> Int64 -> Maybe contentType -> m (Maybe Blob)
slice self start end contentType
  = liftDOM
      (((toBlob self) ^. jsf "slice"
          [toJSVal start, toJSVal end, toJSVal contentType])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.slice Mozilla Blob.slice documentation> 
slice_ ::
       (MonadDOM m, IsBlob self, ToJSString contentType) =>
         self -> Int64 -> Int64 -> Maybe contentType -> m ()
slice_ self start end contentType
  = liftDOM
      (void
         ((toBlob self) ^. jsf "slice"
            [toJSVal start, toJSVal end, toJSVal contentType]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.slice Mozilla Blob.slice documentation> 
sliceUnsafe ::
            (MonadDOM m, IsBlob self, ToJSString contentType, HasCallStack) =>
              self -> Int64 -> Int64 -> Maybe contentType -> m Blob
sliceUnsafe self start end contentType
  = liftDOM
      ((((toBlob self) ^. jsf "slice"
           [toJSVal start, toJSVal end, toJSVal contentType])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.slice Mozilla Blob.slice documentation> 
sliceUnchecked ::
               (MonadDOM m, IsBlob self, ToJSString contentType) =>
                 self -> Int64 -> Int64 -> Maybe contentType -> m Blob
sliceUnchecked self start end contentType
  = liftDOM
      (((toBlob self) ^. jsf "slice"
          [toJSVal start, toJSVal end, toJSVal contentType])
         >>= fromJSValUnchecked)

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
