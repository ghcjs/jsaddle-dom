{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebKitCSSMatrix
       (newWebKitCSSMatrix, setMatrixValue, multiply, multiply_,
        multiplyUnchecked, inverse, inverse_, inverseUnchecked, translate,
        translate_, translateUnchecked, scale, scale_, scaleUnchecked,
        rotate, rotate_, rotateUnchecked, rotateAxisAngle,
        rotateAxisAngle_, rotateAxisAngleUnchecked, skewX, skewX_,
        skewXUnchecked, skewY, skewY_, skewYUnchecked, toString, toString_,
        setA, getA, setB, getB, setC, getC, setD, getD, setE, getE, setF,
        getF, setM11, getM11, setM12, getM12, setM13, getM13, setM14,
        getM14, setM21, getM21, setM22, getM22, setM23, getM23, setM24,
        getM24, setM31, getM31, setM32, getM32, setM33, getM33, setM34,
        getM34, setM41, getM41, setM42, getM42, setM43, getM43, setM44,
        getM44, WebKitCSSMatrix, castToWebKitCSSMatrix,
        gTypeWebKitCSSMatrix)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix Mozilla WebKitCSSMatrix documentation> 
newWebKitCSSMatrix ::
                   (MonadDOM m, ToJSString cssValue) => cssValue -> m WebKitCSSMatrix
newWebKitCSSMatrix cssValue
  = liftDOM
      (WebKitCSSMatrix <$>
         new (jsg "WebKitCSSMatrix") [toJSVal cssValue])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.setMatrixValue Mozilla WebKitCSSMatrix.setMatrixValue documentation> 
setMatrixValue ::
               (MonadDOM m, ToJSString string) =>
                 WebKitCSSMatrix -> string -> m ()
setMatrixValue self string
  = liftDOM (void (self ^. jsf "setMatrixValue" [toJSVal string]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.multiply Mozilla WebKitCSSMatrix.multiply documentation> 
multiply ::
         (MonadDOM m) =>
           WebKitCSSMatrix ->
             Maybe WebKitCSSMatrix -> m (Maybe WebKitCSSMatrix)
multiply self secondMatrix
  = liftDOM
      ((self ^. jsf "multiply" [toJSVal secondMatrix]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.multiply Mozilla WebKitCSSMatrix.multiply documentation> 
multiply_ ::
          (MonadDOM m) => WebKitCSSMatrix -> Maybe WebKitCSSMatrix -> m ()
multiply_ self secondMatrix
  = liftDOM (void (self ^. jsf "multiply" [toJSVal secondMatrix]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.multiply Mozilla WebKitCSSMatrix.multiply documentation> 
multiplyUnchecked ::
                  (MonadDOM m) =>
                    WebKitCSSMatrix -> Maybe WebKitCSSMatrix -> m WebKitCSSMatrix
multiplyUnchecked self secondMatrix
  = liftDOM
      ((self ^. jsf "multiply" [toJSVal secondMatrix]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.inverse Mozilla WebKitCSSMatrix.inverse documentation> 
inverse ::
        (MonadDOM m) => WebKitCSSMatrix -> m (Maybe WebKitCSSMatrix)
inverse self = liftDOM ((self ^. jsf "inverse" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.inverse Mozilla WebKitCSSMatrix.inverse documentation> 
inverse_ :: (MonadDOM m) => WebKitCSSMatrix -> m ()
inverse_ self = liftDOM (void (self ^. jsf "inverse" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.inverse Mozilla WebKitCSSMatrix.inverse documentation> 
inverseUnchecked ::
                 (MonadDOM m) => WebKitCSSMatrix -> m WebKitCSSMatrix
inverseUnchecked self
  = liftDOM ((self ^. jsf "inverse" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.translate Mozilla WebKitCSSMatrix.translate documentation> 
translate ::
          (MonadDOM m) =>
            WebKitCSSMatrix ->
              Double -> Double -> Double -> m (Maybe WebKitCSSMatrix)
translate self x y z
  = liftDOM
      ((self ^. jsf "translate" [toJSVal x, toJSVal y, toJSVal z]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.translate Mozilla WebKitCSSMatrix.translate documentation> 
translate_ ::
           (MonadDOM m) =>
             WebKitCSSMatrix -> Double -> Double -> Double -> m ()
translate_ self x y z
  = liftDOM
      (void (self ^. jsf "translate" [toJSVal x, toJSVal y, toJSVal z]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.translate Mozilla WebKitCSSMatrix.translate documentation> 
translateUnchecked ::
                   (MonadDOM m) =>
                     WebKitCSSMatrix -> Double -> Double -> Double -> m WebKitCSSMatrix
translateUnchecked self x y z
  = liftDOM
      ((self ^. jsf "translate" [toJSVal x, toJSVal y, toJSVal z]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.scale Mozilla WebKitCSSMatrix.scale documentation> 
scale ::
      (MonadDOM m) =>
        WebKitCSSMatrix ->
          Double -> Double -> Double -> m (Maybe WebKitCSSMatrix)
scale self scaleX scaleY scaleZ
  = liftDOM
      ((self ^. jsf "scale"
          [toJSVal scaleX, toJSVal scaleY, toJSVal scaleZ])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.scale Mozilla WebKitCSSMatrix.scale documentation> 
scale_ ::
       (MonadDOM m) =>
         WebKitCSSMatrix -> Double -> Double -> Double -> m ()
scale_ self scaleX scaleY scaleZ
  = liftDOM
      (void
         (self ^. jsf "scale"
            [toJSVal scaleX, toJSVal scaleY, toJSVal scaleZ]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.scale Mozilla WebKitCSSMatrix.scale documentation> 
scaleUnchecked ::
               (MonadDOM m) =>
                 WebKitCSSMatrix -> Double -> Double -> Double -> m WebKitCSSMatrix
scaleUnchecked self scaleX scaleY scaleZ
  = liftDOM
      ((self ^. jsf "scale"
          [toJSVal scaleX, toJSVal scaleY, toJSVal scaleZ])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.rotate Mozilla WebKitCSSMatrix.rotate documentation> 
rotate ::
       (MonadDOM m) =>
         WebKitCSSMatrix ->
           Double -> Double -> Double -> m (Maybe WebKitCSSMatrix)
rotate self rotX rotY rotZ
  = liftDOM
      ((self ^. jsf "rotate" [toJSVal rotX, toJSVal rotY, toJSVal rotZ])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.rotate Mozilla WebKitCSSMatrix.rotate documentation> 
rotate_ ::
        (MonadDOM m) =>
          WebKitCSSMatrix -> Double -> Double -> Double -> m ()
rotate_ self rotX rotY rotZ
  = liftDOM
      (void
         (self ^. jsf "rotate" [toJSVal rotX, toJSVal rotY, toJSVal rotZ]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.rotate Mozilla WebKitCSSMatrix.rotate documentation> 
rotateUnchecked ::
                (MonadDOM m) =>
                  WebKitCSSMatrix -> Double -> Double -> Double -> m WebKitCSSMatrix
rotateUnchecked self rotX rotY rotZ
  = liftDOM
      ((self ^. jsf "rotate" [toJSVal rotX, toJSVal rotY, toJSVal rotZ])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.rotateAxisAngle Mozilla WebKitCSSMatrix.rotateAxisAngle documentation> 
rotateAxisAngle ::
                (MonadDOM m) =>
                  WebKitCSSMatrix ->
                    Double -> Double -> Double -> Double -> m (Maybe WebKitCSSMatrix)
rotateAxisAngle self x y z angle
  = liftDOM
      ((self ^. jsf "rotateAxisAngle"
          [toJSVal x, toJSVal y, toJSVal z, toJSVal angle])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.rotateAxisAngle Mozilla WebKitCSSMatrix.rotateAxisAngle documentation> 
rotateAxisAngle_ ::
                 (MonadDOM m) =>
                   WebKitCSSMatrix -> Double -> Double -> Double -> Double -> m ()
rotateAxisAngle_ self x y z angle
  = liftDOM
      (void
         (self ^. jsf "rotateAxisAngle"
            [toJSVal x, toJSVal y, toJSVal z, toJSVal angle]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.rotateAxisAngle Mozilla WebKitCSSMatrix.rotateAxisAngle documentation> 
rotateAxisAngleUnchecked ::
                         (MonadDOM m) =>
                           WebKitCSSMatrix ->
                             Double -> Double -> Double -> Double -> m WebKitCSSMatrix
rotateAxisAngleUnchecked self x y z angle
  = liftDOM
      ((self ^. jsf "rotateAxisAngle"
          [toJSVal x, toJSVal y, toJSVal z, toJSVal angle])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.skewX Mozilla WebKitCSSMatrix.skewX documentation> 
skewX ::
      (MonadDOM m) =>
        WebKitCSSMatrix -> Double -> m (Maybe WebKitCSSMatrix)
skewX self angle
  = liftDOM ((self ^. jsf "skewX" [toJSVal angle]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.skewX Mozilla WebKitCSSMatrix.skewX documentation> 
skewX_ :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
skewX_ self angle
  = liftDOM (void (self ^. jsf "skewX" [toJSVal angle]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.skewX Mozilla WebKitCSSMatrix.skewX documentation> 
skewXUnchecked ::
               (MonadDOM m) => WebKitCSSMatrix -> Double -> m WebKitCSSMatrix
skewXUnchecked self angle
  = liftDOM
      ((self ^. jsf "skewX" [toJSVal angle]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.skewY Mozilla WebKitCSSMatrix.skewY documentation> 
skewY ::
      (MonadDOM m) =>
        WebKitCSSMatrix -> Double -> m (Maybe WebKitCSSMatrix)
skewY self angle
  = liftDOM ((self ^. jsf "skewY" [toJSVal angle]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.skewY Mozilla WebKitCSSMatrix.skewY documentation> 
skewY_ :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
skewY_ self angle
  = liftDOM (void (self ^. jsf "skewY" [toJSVal angle]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.skewY Mozilla WebKitCSSMatrix.skewY documentation> 
skewYUnchecked ::
               (MonadDOM m) => WebKitCSSMatrix -> Double -> m WebKitCSSMatrix
skewYUnchecked self angle
  = liftDOM
      ((self ^. jsf "skewY" [toJSVal angle]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.toString Mozilla WebKitCSSMatrix.toString documentation> 
toString ::
         (MonadDOM m, FromJSString result) => WebKitCSSMatrix -> m result
toString self
  = liftDOM ((self ^. jsf "toString" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.toString Mozilla WebKitCSSMatrix.toString documentation> 
toString_ :: (MonadDOM m) => WebKitCSSMatrix -> m ()
toString_ self = liftDOM (void (self ^. jsf "toString" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.a Mozilla WebKitCSSMatrix.a documentation> 
setA :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setA self val = liftDOM (self ^. jss "a" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.a Mozilla WebKitCSSMatrix.a documentation> 
getA :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getA self = liftDOM ((self ^. js "a") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.b Mozilla WebKitCSSMatrix.b documentation> 
setB :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setB self val = liftDOM (self ^. jss "b" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.b Mozilla WebKitCSSMatrix.b documentation> 
getB :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getB self = liftDOM ((self ^. js "b") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.c Mozilla WebKitCSSMatrix.c documentation> 
setC :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setC self val = liftDOM (self ^. jss "c" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.c Mozilla WebKitCSSMatrix.c documentation> 
getC :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getC self = liftDOM ((self ^. js "c") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.d Mozilla WebKitCSSMatrix.d documentation> 
setD :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setD self val = liftDOM (self ^. jss "d" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.d Mozilla WebKitCSSMatrix.d documentation> 
getD :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getD self = liftDOM ((self ^. js "d") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.e Mozilla WebKitCSSMatrix.e documentation> 
setE :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setE self val = liftDOM (self ^. jss "e" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.e Mozilla WebKitCSSMatrix.e documentation> 
getE :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getE self = liftDOM ((self ^. js "e") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.f Mozilla WebKitCSSMatrix.f documentation> 
setF :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setF self val = liftDOM (self ^. jss "f" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.f Mozilla WebKitCSSMatrix.f documentation> 
getF :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getF self = liftDOM ((self ^. js "f") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m11 Mozilla WebKitCSSMatrix.m11 documentation> 
setM11 :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setM11 self val = liftDOM (self ^. jss "m11" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m11 Mozilla WebKitCSSMatrix.m11 documentation> 
getM11 :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getM11 self = liftDOM ((self ^. js "m11") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m12 Mozilla WebKitCSSMatrix.m12 documentation> 
setM12 :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setM12 self val = liftDOM (self ^. jss "m12" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m12 Mozilla WebKitCSSMatrix.m12 documentation> 
getM12 :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getM12 self = liftDOM ((self ^. js "m12") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m13 Mozilla WebKitCSSMatrix.m13 documentation> 
setM13 :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setM13 self val = liftDOM (self ^. jss "m13" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m13 Mozilla WebKitCSSMatrix.m13 documentation> 
getM13 :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getM13 self = liftDOM ((self ^. js "m13") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m14 Mozilla WebKitCSSMatrix.m14 documentation> 
setM14 :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setM14 self val = liftDOM (self ^. jss "m14" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m14 Mozilla WebKitCSSMatrix.m14 documentation> 
getM14 :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getM14 self = liftDOM ((self ^. js "m14") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m21 Mozilla WebKitCSSMatrix.m21 documentation> 
setM21 :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setM21 self val = liftDOM (self ^. jss "m21" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m21 Mozilla WebKitCSSMatrix.m21 documentation> 
getM21 :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getM21 self = liftDOM ((self ^. js "m21") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m22 Mozilla WebKitCSSMatrix.m22 documentation> 
setM22 :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setM22 self val = liftDOM (self ^. jss "m22" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m22 Mozilla WebKitCSSMatrix.m22 documentation> 
getM22 :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getM22 self = liftDOM ((self ^. js "m22") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m23 Mozilla WebKitCSSMatrix.m23 documentation> 
setM23 :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setM23 self val = liftDOM (self ^. jss "m23" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m23 Mozilla WebKitCSSMatrix.m23 documentation> 
getM23 :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getM23 self = liftDOM ((self ^. js "m23") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m24 Mozilla WebKitCSSMatrix.m24 documentation> 
setM24 :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setM24 self val = liftDOM (self ^. jss "m24" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m24 Mozilla WebKitCSSMatrix.m24 documentation> 
getM24 :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getM24 self = liftDOM ((self ^. js "m24") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m31 Mozilla WebKitCSSMatrix.m31 documentation> 
setM31 :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setM31 self val = liftDOM (self ^. jss "m31" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m31 Mozilla WebKitCSSMatrix.m31 documentation> 
getM31 :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getM31 self = liftDOM ((self ^. js "m31") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m32 Mozilla WebKitCSSMatrix.m32 documentation> 
setM32 :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setM32 self val = liftDOM (self ^. jss "m32" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m32 Mozilla WebKitCSSMatrix.m32 documentation> 
getM32 :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getM32 self = liftDOM ((self ^. js "m32") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m33 Mozilla WebKitCSSMatrix.m33 documentation> 
setM33 :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setM33 self val = liftDOM (self ^. jss "m33" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m33 Mozilla WebKitCSSMatrix.m33 documentation> 
getM33 :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getM33 self = liftDOM ((self ^. js "m33") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m34 Mozilla WebKitCSSMatrix.m34 documentation> 
setM34 :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setM34 self val = liftDOM (self ^. jss "m34" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m34 Mozilla WebKitCSSMatrix.m34 documentation> 
getM34 :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getM34 self = liftDOM ((self ^. js "m34") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m41 Mozilla WebKitCSSMatrix.m41 documentation> 
setM41 :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setM41 self val = liftDOM (self ^. jss "m41" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m41 Mozilla WebKitCSSMatrix.m41 documentation> 
getM41 :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getM41 self = liftDOM ((self ^. js "m41") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m42 Mozilla WebKitCSSMatrix.m42 documentation> 
setM42 :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setM42 self val = liftDOM (self ^. jss "m42" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m42 Mozilla WebKitCSSMatrix.m42 documentation> 
getM42 :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getM42 self = liftDOM ((self ^. js "m42") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m43 Mozilla WebKitCSSMatrix.m43 documentation> 
setM43 :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setM43 self val = liftDOM (self ^. jss "m43" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m43 Mozilla WebKitCSSMatrix.m43 documentation> 
getM43 :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getM43 self = liftDOM ((self ^. js "m43") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m44 Mozilla WebKitCSSMatrix.m44 documentation> 
setM44 :: (MonadDOM m) => WebKitCSSMatrix -> Double -> m ()
setM44 self val = liftDOM (self ^. jss "m44" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSMatrix.m44 Mozilla WebKitCSSMatrix.m44 documentation> 
getM44 :: (MonadDOM m) => WebKitCSSMatrix -> m Double
getM44 self = liftDOM ((self ^. js "m44") >>= valToNumber)
