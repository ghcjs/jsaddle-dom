{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGMatrix
       (multiply, multiply_, multiplyUnchecked, inverse, inverse_,
        inverseUnchecked, translate, translate_, translateUnchecked, scale,
        scale_, scaleUnchecked, scaleNonUniform, scaleNonUniform_,
        scaleNonUniformUnchecked, rotate, rotate_, rotateUnchecked,
        rotateFromVector, rotateFromVector_, rotateFromVectorUnchecked,
        flipX, flipX_, flipXUnchecked, flipY, flipY_, flipYUnchecked,
        skewX, skewX_, skewXUnchecked, skewY, skewY_, skewYUnchecked, setA,
        getA, setB, getB, setC, getC, setD, getD, setE, getE, setF, getF,
        SVGMatrix(..), gTypeSVGMatrix)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.multiply Mozilla SVGMatrix.multiply documentation> 
multiply_ :: (MonadDOM m) => SVGMatrix -> Maybe SVGMatrix -> m ()
multiply_ self secondMatrix
  = liftDOM (void (self ^. jsf "multiply" [toJSVal secondMatrix]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.multiply Mozilla SVGMatrix.multiply documentation> 
multiplyUnchecked ::
                  (MonadDOM m) => SVGMatrix -> Maybe SVGMatrix -> m SVGMatrix
multiplyUnchecked self secondMatrix
  = liftDOM
      ((self ^. jsf "multiply" [toJSVal secondMatrix]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.inverse Mozilla SVGMatrix.inverse documentation> 
inverse :: (MonadDOM m) => SVGMatrix -> m (Maybe SVGMatrix)
inverse self = liftDOM ((self ^. jsf "inverse" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.inverse Mozilla SVGMatrix.inverse documentation> 
inverse_ :: (MonadDOM m) => SVGMatrix -> m ()
inverse_ self = liftDOM (void (self ^. jsf "inverse" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.inverse Mozilla SVGMatrix.inverse documentation> 
inverseUnchecked :: (MonadDOM m) => SVGMatrix -> m SVGMatrix
inverseUnchecked self
  = liftDOM ((self ^. jsf "inverse" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.translate Mozilla SVGMatrix.translate documentation> 
translate ::
          (MonadDOM m) => SVGMatrix -> Float -> Float -> m (Maybe SVGMatrix)
translate self x y
  = liftDOM
      ((self ^. jsf "translate" [toJSVal x, toJSVal y]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.translate Mozilla SVGMatrix.translate documentation> 
translate_ :: (MonadDOM m) => SVGMatrix -> Float -> Float -> m ()
translate_ self x y
  = liftDOM (void (self ^. jsf "translate" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.translate Mozilla SVGMatrix.translate documentation> 
translateUnchecked ::
                   (MonadDOM m) => SVGMatrix -> Float -> Float -> m SVGMatrix
translateUnchecked self x y
  = liftDOM
      ((self ^. jsf "translate" [toJSVal x, toJSVal y]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scale Mozilla SVGMatrix.scale documentation> 
scale :: (MonadDOM m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
scale self scaleFactor
  = liftDOM
      ((self ^. jsf "scale" [toJSVal scaleFactor]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scale Mozilla SVGMatrix.scale documentation> 
scale_ :: (MonadDOM m) => SVGMatrix -> Float -> m ()
scale_ self scaleFactor
  = liftDOM (void (self ^. jsf "scale" [toJSVal scaleFactor]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scale Mozilla SVGMatrix.scale documentation> 
scaleUnchecked :: (MonadDOM m) => SVGMatrix -> Float -> m SVGMatrix
scaleUnchecked self scaleFactor
  = liftDOM
      ((self ^. jsf "scale" [toJSVal scaleFactor]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scaleNonUniform Mozilla SVGMatrix.scaleNonUniform documentation> 
scaleNonUniform ::
                (MonadDOM m) => SVGMatrix -> Float -> Float -> m (Maybe SVGMatrix)
scaleNonUniform self scaleFactorX scaleFactorY
  = liftDOM
      ((self ^. jsf "scaleNonUniform"
          [toJSVal scaleFactorX, toJSVal scaleFactorY])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scaleNonUniform Mozilla SVGMatrix.scaleNonUniform documentation> 
scaleNonUniform_ ::
                 (MonadDOM m) => SVGMatrix -> Float -> Float -> m ()
scaleNonUniform_ self scaleFactorX scaleFactorY
  = liftDOM
      (void
         (self ^. jsf "scaleNonUniform"
            [toJSVal scaleFactorX, toJSVal scaleFactorY]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.scaleNonUniform Mozilla SVGMatrix.scaleNonUniform documentation> 
scaleNonUniformUnchecked ::
                         (MonadDOM m) => SVGMatrix -> Float -> Float -> m SVGMatrix
scaleNonUniformUnchecked self scaleFactorX scaleFactorY
  = liftDOM
      ((self ^. jsf "scaleNonUniform"
          [toJSVal scaleFactorX, toJSVal scaleFactorY])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotate Mozilla SVGMatrix.rotate documentation> 
rotate :: (MonadDOM m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
rotate self angle
  = liftDOM ((self ^. jsf "rotate" [toJSVal angle]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotate Mozilla SVGMatrix.rotate documentation> 
rotate_ :: (MonadDOM m) => SVGMatrix -> Float -> m ()
rotate_ self angle
  = liftDOM (void (self ^. jsf "rotate" [toJSVal angle]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotate Mozilla SVGMatrix.rotate documentation> 
rotateUnchecked ::
                (MonadDOM m) => SVGMatrix -> Float -> m SVGMatrix
rotateUnchecked self angle
  = liftDOM
      ((self ^. jsf "rotate" [toJSVal angle]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotateFromVector Mozilla SVGMatrix.rotateFromVector documentation> 
rotateFromVector ::
                 (MonadDOM m) => SVGMatrix -> Float -> Float -> m (Maybe SVGMatrix)
rotateFromVector self x y
  = liftDOM
      ((self ^. jsf "rotateFromVector" [toJSVal x, toJSVal y]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotateFromVector Mozilla SVGMatrix.rotateFromVector documentation> 
rotateFromVector_ ::
                  (MonadDOM m) => SVGMatrix -> Float -> Float -> m ()
rotateFromVector_ self x y
  = liftDOM
      (void (self ^. jsf "rotateFromVector" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.rotateFromVector Mozilla SVGMatrix.rotateFromVector documentation> 
rotateFromVectorUnchecked ::
                          (MonadDOM m) => SVGMatrix -> Float -> Float -> m SVGMatrix
rotateFromVectorUnchecked self x y
  = liftDOM
      ((self ^. jsf "rotateFromVector" [toJSVal x, toJSVal y]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipX Mozilla SVGMatrix.flipX documentation> 
flipX :: (MonadDOM m) => SVGMatrix -> m (Maybe SVGMatrix)
flipX self = liftDOM ((self ^. jsf "flipX" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipX Mozilla SVGMatrix.flipX documentation> 
flipX_ :: (MonadDOM m) => SVGMatrix -> m ()
flipX_ self = liftDOM (void (self ^. jsf "flipX" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipX Mozilla SVGMatrix.flipX documentation> 
flipXUnchecked :: (MonadDOM m) => SVGMatrix -> m SVGMatrix
flipXUnchecked self
  = liftDOM ((self ^. jsf "flipX" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipY Mozilla SVGMatrix.flipY documentation> 
flipY :: (MonadDOM m) => SVGMatrix -> m (Maybe SVGMatrix)
flipY self = liftDOM ((self ^. jsf "flipY" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipY Mozilla SVGMatrix.flipY documentation> 
flipY_ :: (MonadDOM m) => SVGMatrix -> m ()
flipY_ self = liftDOM (void (self ^. jsf "flipY" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.flipY Mozilla SVGMatrix.flipY documentation> 
flipYUnchecked :: (MonadDOM m) => SVGMatrix -> m SVGMatrix
flipYUnchecked self
  = liftDOM ((self ^. jsf "flipY" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewX Mozilla SVGMatrix.skewX documentation> 
skewX :: (MonadDOM m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
skewX self angle
  = liftDOM ((self ^. jsf "skewX" [toJSVal angle]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewX Mozilla SVGMatrix.skewX documentation> 
skewX_ :: (MonadDOM m) => SVGMatrix -> Float -> m ()
skewX_ self angle
  = liftDOM (void (self ^. jsf "skewX" [toJSVal angle]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewX Mozilla SVGMatrix.skewX documentation> 
skewXUnchecked :: (MonadDOM m) => SVGMatrix -> Float -> m SVGMatrix
skewXUnchecked self angle
  = liftDOM
      ((self ^. jsf "skewX" [toJSVal angle]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewY Mozilla SVGMatrix.skewY documentation> 
skewY :: (MonadDOM m) => SVGMatrix -> Float -> m (Maybe SVGMatrix)
skewY self angle
  = liftDOM ((self ^. jsf "skewY" [toJSVal angle]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewY Mozilla SVGMatrix.skewY documentation> 
skewY_ :: (MonadDOM m) => SVGMatrix -> Float -> m ()
skewY_ self angle
  = liftDOM (void (self ^. jsf "skewY" [toJSVal angle]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMatrix.skewY Mozilla SVGMatrix.skewY documentation> 
skewYUnchecked :: (MonadDOM m) => SVGMatrix -> Float -> m SVGMatrix
skewYUnchecked self angle
  = liftDOM
      ((self ^. jsf "skewY" [toJSVal angle]) >>= fromJSValUnchecked)

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
