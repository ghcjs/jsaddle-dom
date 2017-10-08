{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ImageData
       (newImageData, newImageData', getWidth, getHeight, getData,
        ImageData(..), gTypeImageData)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData Mozilla ImageData documentation> 
newImageData ::
             (MonadDOM m, IsUint8ClampedArray data') =>
               data' -> Word -> Maybe Word -> m ImageData
newImageData data' sw sh
  = liftDOM
      (ImageData <$>
         new (jsg "ImageData") [toJSVal data', toJSVal sw, toJSVal sh])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData Mozilla ImageData documentation> 
newImageData' :: (MonadDOM m) => Word -> Word -> m ImageData
newImageData' sw sh
  = liftDOM
      (ImageData <$> new (jsg "ImageData") [toJSVal sw, toJSVal sh])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData.width Mozilla ImageData.width documentation> 
getWidth :: (MonadDOM m) => ImageData -> m Word
getWidth self
  = liftDOM (round <$> ((self ^. js "width") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData.height Mozilla ImageData.height documentation> 
getHeight :: (MonadDOM m) => ImageData -> m Word
getHeight self
  = liftDOM (round <$> ((self ^. js "height") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData.data Mozilla ImageData.data documentation> 
getData :: (MonadDOM m) => ImageData -> m Uint8ClampedArray
getData self = liftDOM ((self ^. js "data") >>= fromJSValUnchecked)
