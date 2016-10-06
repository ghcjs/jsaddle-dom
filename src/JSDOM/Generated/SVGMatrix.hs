{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGMatrix
       (multiply, inverse, translate, scale, scaleNonUniform, rotate,
        rotateFromVector, flipX, flipY, skewX, skewY, setA, getA, setB,
        getB, setC, getC, setD, getD, setE, getE, setF, getF, SVGMatrix,
        castToSVGMatrix, gTypeSVGMatrix)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.multiply Mozilla SVGMatrix.multiply documentation> 
multiply ::
         (MonadDOM m) => SVGMatrix -> Maybe SVGMatrix -> m (Maybe SVGMatrix)
multiply self secondMatrix
  = liftDOM
      ((self ^. jsf "multiply" [toJSVal secondMatrix]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.inverse Mozilla SVGMatrix.inverse documentation> 
inverse :: (MonadDOM m) => SVGMatrix -> m (Maybe SVGMatrix)
inverse self = liftDOM ((self ^. jsf "inverse" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.translate Mozilla SVGMatrix.translate documentation> 
translate ::
          (MonadDOM m) => SVGMatrix -> Float -> Float -> m (Maybe SVGMatrix)
translate self x y
  = liftDOM
      ((self ^. jsf "translate" [toJSVal x, toJSVal y]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scale Mozilla SVGMatrix.scale documentation> 
scale :: (MonadDOM m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
scale self scaleFactor
  = liftDOM
      ((self ^. jsf "scale" [toJSVal scaleFactor]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scaleNonUniform Mozilla SVGMatrix.scaleNonUniform documentation> 
scaleNonUniform ::
                (MonadDOM m) => SVGMatrix -> Float -> Float -> m (Maybe SVGMatrix)
scaleNonUniform self scaleFactorX scaleFactorY
  = liftDOM
      ((self ^. jsf "scaleNonUniform"
          [toJSVal scaleFactorX, toJSVal scaleFactorY])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotate Mozilla SVGMatrix.rotate documentation> 
rotate :: (MonadDOM m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
rotate self angle
  = liftDOM ((self ^. jsf "rotate" [toJSVal angle]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotateFromVector Mozilla SVGMatrix.rotateFromVector documentation> 
rotateFromVector ::
                 (MonadDOM m) => SVGMatrix -> Float -> Float -> m (Maybe SVGMatrix)
rotateFromVector self x y
  = liftDOM
      ((self ^. jsf "rotateFromVector" [toJSVal x, toJSVal y]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipX Mozilla SVGMatrix.flipX documentation> 
flipX :: (MonadDOM m) => SVGMatrix -> m (Maybe SVGMatrix)
flipX self = liftDOM ((self ^. jsf "flipX" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipY Mozilla SVGMatrix.flipY documentation> 
flipY :: (MonadDOM m) => SVGMatrix -> m (Maybe SVGMatrix)
flipY self = liftDOM ((self ^. jsf "flipY" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewX Mozilla SVGMatrix.skewX documentation> 
skewX :: (MonadDOM m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
skewX self angle
  = liftDOM ((self ^. jsf "skewX" [toJSVal angle]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewY Mozilla SVGMatrix.skewY documentation> 
skewY :: (MonadDOM m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
skewY self angle
  = liftDOM ((self ^. jsf "skewY" [toJSVal angle]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.a Mozilla SVGMatrix.a documentation> 
setA :: (MonadDOM m) => SVGMatrix -> Double -> m ()
setA self val = liftDOM (self ^. jss "a" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.a Mozilla SVGMatrix.a documentation> 
getA :: (MonadDOM m) => SVGMatrix -> m Double
getA self = liftDOM ((self ^. js "a") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.b Mozilla SVGMatrix.b documentation> 
setB :: (MonadDOM m) => SVGMatrix -> Double -> m ()
setB self val = liftDOM (self ^. jss "b" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.b Mozilla SVGMatrix.b documentation> 
getB :: (MonadDOM m) => SVGMatrix -> m Double
getB self = liftDOM ((self ^. js "b") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.c Mozilla SVGMatrix.c documentation> 
setC :: (MonadDOM m) => SVGMatrix -> Double -> m ()
setC self val = liftDOM (self ^. jss "c" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.c Mozilla SVGMatrix.c documentation> 
getC :: (MonadDOM m) => SVGMatrix -> m Double
getC self = liftDOM ((self ^. js "c") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.d Mozilla SVGMatrix.d documentation> 
setD :: (MonadDOM m) => SVGMatrix -> Double -> m ()
setD self val = liftDOM (self ^. jss "d" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.d Mozilla SVGMatrix.d documentation> 
getD :: (MonadDOM m) => SVGMatrix -> m Double
getD self = liftDOM ((self ^. js "d") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.e Mozilla SVGMatrix.e documentation> 
setE :: (MonadDOM m) => SVGMatrix -> Double -> m ()
setE self val = liftDOM (self ^. jss "e" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.e Mozilla SVGMatrix.e documentation> 
getE :: (MonadDOM m) => SVGMatrix -> m Double
getE self = liftDOM ((self ^. js "e") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.f Mozilla SVGMatrix.f documentation> 
setF :: (MonadDOM m) => SVGMatrix -> Double -> m ()
setF self val = liftDOM (self ^. jss "f" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.f Mozilla SVGMatrix.f documentation> 
getF :: (MonadDOM m) => SVGMatrix -> m Double
getF self = liftDOM ((self ^. js "f") >>= valToNumber)
