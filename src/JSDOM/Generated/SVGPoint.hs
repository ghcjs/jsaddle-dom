{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPoint
       (matrixTransform, setX, getX, setY, getY, SVGPoint, castToSVGPoint,
        gTypeSVGPoint)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.matrixTransform Mozilla SVGPoint.matrixTransform documentation> 
matrixTransform ::
                (MonadDOM m) => SVGPoint -> Maybe SVGMatrix -> m (Maybe SVGPoint)
matrixTransform self matrix
  = liftDOM
      ((self ^. jsf "matrixTransform" [toJSVal matrix]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.x Mozilla SVGPoint.x documentation> 
setX :: (MonadDOM m) => SVGPoint -> Float -> m ()
setX self val = liftDOM (self ^. jss "x" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.x Mozilla SVGPoint.x documentation> 
getX :: (MonadDOM m) => SVGPoint -> m Float
getX self
  = liftDOM (realToFrac <$> ((self ^. js "x") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.y Mozilla SVGPoint.y documentation> 
setY :: (MonadDOM m) => SVGPoint -> Float -> m ()
setY self val = liftDOM (self ^. jss "y" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.y Mozilla SVGPoint.y documentation> 
getY :: (MonadDOM m) => SVGPoint -> m Float
getY self
  = liftDOM (realToFrac <$> ((self ^. js "y") >>= valToNumber))
