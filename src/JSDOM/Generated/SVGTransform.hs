{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGTransform
       (setMatrix, setTranslate, setScale, setRotate, setSkewX, setSkewY,
        pattern SVG_TRANSFORM_UNKNOWN, pattern SVG_TRANSFORM_MATRIX,
        pattern SVG_TRANSFORM_TRANSLATE, pattern SVG_TRANSFORM_SCALE,
        pattern SVG_TRANSFORM_ROTATE, pattern SVG_TRANSFORM_SKEWX,
        pattern SVG_TRANSFORM_SKEWY, getType, getMatrix,
        getMatrixUnchecked, getAngle, SVGTransform(..), gTypeSVGTransform)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.setMatrix Mozilla SVGTransform.setMatrix documentation> 
setMatrix ::
          (MonadDOM m) => SVGTransform -> Maybe SVGMatrix -> m ()
setMatrix self matrix
  = liftDOM (void (self ^. jsf "setMatrix" [toJSVal matrix]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.setTranslate Mozilla SVGTransform.setTranslate documentation> 
setTranslate ::
             (MonadDOM m) => SVGTransform -> Float -> Float -> m ()
setTranslate self tx ty
  = liftDOM
      (void (self ^. jsf "setTranslate" [toJSVal tx, toJSVal ty]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.setScale Mozilla SVGTransform.setScale documentation> 
setScale :: (MonadDOM m) => SVGTransform -> Float -> Float -> m ()
setScale self sx sy
  = liftDOM (void (self ^. jsf "setScale" [toJSVal sx, toJSVal sy]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.setRotate Mozilla SVGTransform.setRotate documentation> 
setRotate ::
          (MonadDOM m) => SVGTransform -> Float -> Float -> Float -> m ()
setRotate self angle cx cy
  = liftDOM
      (void
         (self ^. jsf "setRotate" [toJSVal angle, toJSVal cx, toJSVal cy]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.setSkewX Mozilla SVGTransform.setSkewX documentation> 
setSkewX :: (MonadDOM m) => SVGTransform -> Float -> m ()
setSkewX self angle
  = liftDOM (void (self ^. jsf "setSkewX" [toJSVal angle]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.setSkewY Mozilla SVGTransform.setSkewY documentation> 
setSkewY :: (MonadDOM m) => SVGTransform -> Float -> m ()
setSkewY self angle
  = liftDOM (void (self ^. jsf "setSkewY" [toJSVal angle]))
pattern SVG_TRANSFORM_UNKNOWN = 0
pattern SVG_TRANSFORM_MATRIX = 1
pattern SVG_TRANSFORM_TRANSLATE = 2
pattern SVG_TRANSFORM_SCALE = 3
pattern SVG_TRANSFORM_ROTATE = 4
pattern SVG_TRANSFORM_SKEWX = 5
pattern SVG_TRANSFORM_SKEWY = 6

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.type Mozilla SVGTransform.type documentation> 
getType :: (MonadDOM m) => SVGTransform -> m Word
getType self
  = liftDOM (round <$> ((self ^. js "type") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.matrix Mozilla SVGTransform.matrix documentation> 
getMatrix :: (MonadDOM m) => SVGTransform -> m (Maybe SVGMatrix)
getMatrix self = liftDOM ((self ^. js "matrix") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.matrix Mozilla SVGTransform.matrix documentation> 
getMatrixUnchecked :: (MonadDOM m) => SVGTransform -> m SVGMatrix
getMatrixUnchecked self
  = liftDOM ((self ^. js "matrix") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTransform.angle Mozilla SVGTransform.angle documentation> 
getAngle :: (MonadDOM m) => SVGTransform -> m Float
getAngle self
  = liftDOM (realToFrac <$> ((self ^. js "angle") >>= valToNumber))
