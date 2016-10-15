{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ImageData
       (newImageData, newImageData', getWidth, getHeight, ImageData(..),
        gTypeImageData)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData Mozilla ImageData documentation> 
newImageData ::
             (MonadDOM m, IsUint8ClampedArray data') =>
               Maybe data' -> Word -> Word -> m ImageData
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
getWidth :: (MonadDOM m) => ImageData -> m Int
getWidth self
  = liftDOM (round <$> ((self ^. js "width") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData.height Mozilla ImageData.height documentation> 
getHeight :: (MonadDOM m) => ImageData -> m Int
getHeight self
  = liftDOM (round <$> ((self ^. js "height") >>= valToNumber))
