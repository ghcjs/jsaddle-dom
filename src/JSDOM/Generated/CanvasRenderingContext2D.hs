{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.CanvasRenderingContext2D
       (save, restore, scale, rotate, translate, transform, setTransform,
        createLinearGradient, createRadialGradient, setLineDash,
        getLineDash, clearRect, fillRect, beginPath, closePath, moveTo,
        lineTo, quadraticCurveTo, bezierCurveTo, arcTo, rect, arc,
        fillPath, strokePath, clipPath, fill, stroke, clip,
        isPointInPathPath, isPointInStrokePath, isPointInPath,
        isPointInStroke, measureText, setAlpha, setCompositeOperation,
        setLineWidthFunction, setLineCapFunction, setLineJoinFunction,
        setMiterLimitFunction, clearShadow, fillText, strokeText,
        setStrokeColor, setStrokeColorGray, setStrokeColorRGB,
        setStrokeColorCYMK, setFillColor, setFillColorGray,
        setFillColorRGB, setFillColorCYMK, strokeRect, drawImage,
        drawImageScaled, drawImagePart, drawImageFromCanvas,
        drawImageFromCanvasScaled, drawImageFromCanvasPart,
        drawImageFromVideo, drawImageFromVideoScaled,
        drawImageFromVideoPart, drawImageFromRect, setShadow,
        setShadowGray, setShadowRGB, setShadowCYMK, putImageData,
        putImageDataDirty, webkitPutImageDataHD, webkitPutImageDataHDDirty,
        createPatternFromCanvas, createPattern, createImageData,
        createImageDataSize, getImageData, webkitGetImageDataHD,
        drawFocusIfNeeded, drawFocusIfNeededPath, setGlobalAlpha,
        getGlobalAlpha, setGlobalCompositeOperation,
        getGlobalCompositeOperation, setLineWidth, getLineWidth,
        setLineCap, getLineCap, setLineJoin, getLineJoin, setMiterLimit,
        getMiterLimit, setShadowOffsetX, getShadowOffsetX,
        setShadowOffsetY, getShadowOffsetY, setShadowBlur, getShadowBlur,
        setShadowColor, getShadowColor, setLineDashOffset,
        getLineDashOffset, setWebkitLineDash, getWebkitLineDash,
        setWebkitLineDashOffset, getWebkitLineDashOffset, setFont, getFont,
        setTextAlign, getTextAlign, setTextBaseline, getTextBaseline,
        setDirection, getDirection, setStrokeStyle, getStrokeStyle,
        setFillStyle, getFillStyle, getWebkitBackingStorePixelRatio,
        setWebkitImageSmoothingEnabled, getWebkitImageSmoothingEnabled,
        CanvasRenderingContext2D, castToCanvasRenderingContext2D,
        gTypeCanvasRenderingContext2D)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.save Mozilla CanvasRenderingContext2D.save documentation> 
save :: (MonadDOM m) => CanvasRenderingContext2D -> m ()
save self = liftDOM (void (self ^. js "save"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.restore Mozilla CanvasRenderingContext2D.restore documentation> 
restore :: (MonadDOM m) => CanvasRenderingContext2D -> m ()
restore self = liftDOM (void (self ^. js "restore"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.scale Mozilla CanvasRenderingContext2D.scale documentation> 
scale ::
      (MonadDOM m) => CanvasRenderingContext2D -> Float -> Float -> m ()
scale self sx sy
  = liftDOM (void (self ^. jsf "scale" [toJSVal sx, toJSVal sy]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.rotate Mozilla CanvasRenderingContext2D.rotate documentation> 
rotate :: (MonadDOM m) => CanvasRenderingContext2D -> Float -> m ()
rotate self angle
  = liftDOM (void (self ^. jsf "rotate" [toJSVal angle]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.translate Mozilla CanvasRenderingContext2D.translate documentation> 
translate ::
          (MonadDOM m) => CanvasRenderingContext2D -> Float -> Float -> m ()
translate self tx ty
  = liftDOM (void (self ^. jsf "translate" [toJSVal tx, toJSVal ty]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.transform Mozilla CanvasRenderingContext2D.transform documentation> 
transform ::
          (MonadDOM m) =>
            CanvasRenderingContext2D ->
              Float -> Float -> Float -> Float -> Float -> Float -> m ()
transform self m11 m12 m21 m22 dx dy
  = liftDOM
      (void
         (self ^. jsf "transform"
            [toJSVal m11, toJSVal m12, toJSVal m21, toJSVal m22, toJSVal dx,
             toJSVal dy]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setTransform Mozilla CanvasRenderingContext2D.setTransform documentation> 
setTransform ::
             (MonadDOM m) =>
               CanvasRenderingContext2D ->
                 Float -> Float -> Float -> Float -> Float -> Float -> m ()
setTransform self m11 m12 m21 m22 dx dy
  = liftDOM
      (void
         (self ^. jsf "setTransform"
            [toJSVal m11, toJSVal m12, toJSVal m21, toJSVal m22, toJSVal dx,
             toJSVal dy]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.createLinearGradient Mozilla CanvasRenderingContext2D.createLinearGradient documentation> 
createLinearGradient ::
                     (MonadDOM m) =>
                       CanvasRenderingContext2D ->
                         Float -> Float -> Float -> Float -> m (Maybe CanvasGradient)
createLinearGradient self x0 y0 x1 y1
  = liftDOM
      ((self ^. jsf "createLinearGradient"
          [toJSVal x0, toJSVal y0, toJSVal x1, toJSVal y1])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.createRadialGradient Mozilla CanvasRenderingContext2D.createRadialGradient documentation> 
createRadialGradient ::
                     (MonadDOM m) =>
                       CanvasRenderingContext2D ->
                         Float ->
                           Float ->
                             Float -> Float -> Float -> Float -> m (Maybe CanvasGradient)
createRadialGradient self x0 y0 r0 x1 y1 r1
  = liftDOM
      ((self ^. jsf "createRadialGradient"
          [toJSVal x0, toJSVal y0, toJSVal r0, toJSVal x1, toJSVal y1,
           toJSVal r1])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setLineDash Mozilla CanvasRenderingContext2D.setLineDash documentation> 
setLineDash ::
            (MonadDOM m) => CanvasRenderingContext2D -> [Float] -> m ()
setLineDash self dash
  = liftDOM (void (self ^. jsf "setLineDash" [toJSVal (array dash)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.getLineDash Mozilla CanvasRenderingContext2D.getLineDash documentation> 
getLineDash ::
            (MonadDOM m) => CanvasRenderingContext2D -> m [Float]
getLineDash self
  = liftDOM ((self ^. js "getLineDash") >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.clearRect Mozilla CanvasRenderingContext2D.clearRect documentation> 
clearRect ::
          (MonadDOM m) =>
            CanvasRenderingContext2D ->
              Float -> Float -> Float -> Float -> m ()
clearRect self x y width height
  = liftDOM
      (void
         (self ^. jsf "clearRect"
            [toJSVal x, toJSVal y, toJSVal width, toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fillRect Mozilla CanvasRenderingContext2D.fillRect documentation> 
fillRect ::
         (MonadDOM m) =>
           CanvasRenderingContext2D ->
             Float -> Float -> Float -> Float -> m ()
fillRect self x y width height
  = liftDOM
      (void
         (self ^. jsf "fillRect"
            [toJSVal x, toJSVal y, toJSVal width, toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.beginPath Mozilla CanvasRenderingContext2D.beginPath documentation> 
beginPath :: (MonadDOM m) => CanvasRenderingContext2D -> m ()
beginPath self = liftDOM (void (self ^. js "beginPath"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.closePath Mozilla CanvasRenderingContext2D.closePath documentation> 
closePath :: (MonadDOM m) => CanvasRenderingContext2D -> m ()
closePath self = liftDOM (void (self ^. js "closePath"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.moveTo Mozilla CanvasRenderingContext2D.moveTo documentation> 
moveTo ::
       (MonadDOM m) => CanvasRenderingContext2D -> Float -> Float -> m ()
moveTo self x y
  = liftDOM (void (self ^. jsf "moveTo" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineTo Mozilla CanvasRenderingContext2D.lineTo documentation> 
lineTo ::
       (MonadDOM m) => CanvasRenderingContext2D -> Float -> Float -> m ()
lineTo self x y
  = liftDOM (void (self ^. jsf "lineTo" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.quadraticCurveTo Mozilla CanvasRenderingContext2D.quadraticCurveTo documentation> 
quadraticCurveTo ::
                 (MonadDOM m) =>
                   CanvasRenderingContext2D ->
                     Float -> Float -> Float -> Float -> m ()
quadraticCurveTo self cpx cpy x y
  = liftDOM
      (void
         (self ^. jsf "quadraticCurveTo"
            [toJSVal cpx, toJSVal cpy, toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.bezierCurveTo Mozilla CanvasRenderingContext2D.bezierCurveTo documentation> 
bezierCurveTo ::
              (MonadDOM m) =>
                CanvasRenderingContext2D ->
                  Float -> Float -> Float -> Float -> Float -> Float -> m ()
bezierCurveTo self cp1x cp1y cp2x cp2y x y
  = liftDOM
      (void
         (self ^. jsf "bezierCurveTo"
            [toJSVal cp1x, toJSVal cp1y, toJSVal cp2x, toJSVal cp2y, toJSVal x,
             toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.arcTo Mozilla CanvasRenderingContext2D.arcTo documentation> 
arcTo ::
      (MonadDOM m) =>
        CanvasRenderingContext2D ->
          Float -> Float -> Float -> Float -> Float -> m ()
arcTo self x1 y1 x2 y2 radius
  = liftDOM
      (void
         (self ^. jsf "arcTo"
            [toJSVal x1, toJSVal y1, toJSVal x2, toJSVal y2, toJSVal radius]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.rect Mozilla CanvasRenderingContext2D.rect documentation> 
rect ::
     (MonadDOM m) =>
       CanvasRenderingContext2D ->
         Float -> Float -> Float -> Float -> m ()
rect self x y width height
  = liftDOM
      (void
         (self ^. jsf "rect"
            [toJSVal x, toJSVal y, toJSVal width, toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.arc Mozilla CanvasRenderingContext2D.arc documentation> 
arc ::
    (MonadDOM m) =>
      CanvasRenderingContext2D ->
        Float -> Float -> Float -> Float -> Float -> Bool -> m ()
arc self x y radius startAngle endAngle anticlockwise
  = liftDOM
      (void
         (self ^. jsf "arc"
            [toJSVal x, toJSVal y, toJSVal radius, toJSVal startAngle,
             toJSVal endAngle, toJSVal anticlockwise]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fill Mozilla CanvasRenderingContext2D.fill documentation> 
fillPath ::
         (MonadDOM m) =>
           CanvasRenderingContext2D ->
             Maybe Path2D -> CanvasWindingRule -> m ()
fillPath self path winding
  = liftDOM
      (void (self ^. jsf "fill" [toJSVal path, toJSVal winding]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.stroke Mozilla CanvasRenderingContext2D.stroke documentation> 
strokePath ::
           (MonadDOM m) => CanvasRenderingContext2D -> Maybe Path2D -> m ()
strokePath self path
  = liftDOM (void (self ^. jsf "stroke" [toJSVal path]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.clip Mozilla CanvasRenderingContext2D.clip documentation> 
clipPath ::
         (MonadDOM m) =>
           CanvasRenderingContext2D ->
             Maybe Path2D -> CanvasWindingRule -> m ()
clipPath self path winding
  = liftDOM
      (void (self ^. jsf "clip" [toJSVal path, toJSVal winding]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fill Mozilla CanvasRenderingContext2D.fill documentation> 
fill ::
     (MonadDOM m) =>
       CanvasRenderingContext2D -> CanvasWindingRule -> m ()
fill self winding
  = liftDOM (void (self ^. jsf "fill" [toJSVal winding]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.stroke Mozilla CanvasRenderingContext2D.stroke documentation> 
stroke :: (MonadDOM m) => CanvasRenderingContext2D -> m ()
stroke self = liftDOM (void (self ^. js "stroke"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.clip Mozilla CanvasRenderingContext2D.clip documentation> 
clip ::
     (MonadDOM m) =>
       CanvasRenderingContext2D -> CanvasWindingRule -> m ()
clip self winding
  = liftDOM (void (self ^. jsf "clip" [toJSVal winding]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.isPointInPath Mozilla CanvasRenderingContext2D.isPointInPath documentation> 
isPointInPathPath ::
                  (MonadDOM m) =>
                    CanvasRenderingContext2D ->
                      Maybe Path2D -> Float -> Float -> CanvasWindingRule -> m Bool
isPointInPathPath self path x y winding
  = liftDOM
      ((self ^. jsf "isPointInPath"
          [toJSVal path, toJSVal x, toJSVal y, toJSVal winding])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.isPointInStroke Mozilla CanvasRenderingContext2D.isPointInStroke documentation> 
isPointInStrokePath ::
                    (MonadDOM m) =>
                      CanvasRenderingContext2D ->
                        Maybe Path2D -> Float -> Float -> m Bool
isPointInStrokePath self path x y
  = liftDOM
      ((self ^. jsf "isPointInStroke"
          [toJSVal path, toJSVal x, toJSVal y])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.isPointInPath Mozilla CanvasRenderingContext2D.isPointInPath documentation> 
isPointInPath ::
              (MonadDOM m) =>
                CanvasRenderingContext2D ->
                  Float -> Float -> CanvasWindingRule -> m Bool
isPointInPath self x y winding
  = liftDOM
      ((self ^. jsf "isPointInPath"
          [toJSVal x, toJSVal y, toJSVal winding])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.isPointInStroke Mozilla CanvasRenderingContext2D.isPointInStroke documentation> 
isPointInStroke ::
                (MonadDOM m) =>
                  CanvasRenderingContext2D -> Float -> Float -> m Bool
isPointInStroke self x y
  = liftDOM
      ((self ^. jsf "isPointInStroke" [toJSVal x, toJSVal y]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.measureText Mozilla CanvasRenderingContext2D.measureText documentation> 
measureText ::
            (MonadDOM m, ToJSString text) =>
              CanvasRenderingContext2D -> text -> m (Maybe TextMetrics)
measureText self text
  = liftDOM
      ((self ^. jsf "measureText" [toJSVal text]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setAlpha Mozilla CanvasRenderingContext2D.setAlpha documentation> 
setAlpha ::
         (MonadDOM m) => CanvasRenderingContext2D -> Float -> m ()
setAlpha self alpha
  = liftDOM (void (self ^. jsf "setAlpha" [toJSVal alpha]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setCompositeOperation Mozilla CanvasRenderingContext2D.setCompositeOperation documentation> 
setCompositeOperation ::
                      (MonadDOM m, ToJSString compositeOperation) =>
                        CanvasRenderingContext2D -> compositeOperation -> m ()
setCompositeOperation self compositeOperation
  = liftDOM
      (void
         (self ^. jsf "setCompositeOperation" [toJSVal compositeOperation]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setLineWidth Mozilla CanvasRenderingContext2D.setLineWidth documentation> 
setLineWidthFunction ::
                     (MonadDOM m) => CanvasRenderingContext2D -> Float -> m ()
setLineWidthFunction self width
  = liftDOM (void (self ^. jsf "setLineWidth" [toJSVal width]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setLineCap Mozilla CanvasRenderingContext2D.setLineCap documentation> 
setLineCapFunction ::
                   (MonadDOM m, ToJSString cap) =>
                     CanvasRenderingContext2D -> cap -> m ()
setLineCapFunction self cap
  = liftDOM (void (self ^. jsf "setLineCap" [toJSVal cap]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setLineJoin Mozilla CanvasRenderingContext2D.setLineJoin documentation> 
setLineJoinFunction ::
                    (MonadDOM m, ToJSString join) =>
                      CanvasRenderingContext2D -> join -> m ()
setLineJoinFunction self join
  = liftDOM (void (self ^. jsf "setLineJoin" [toJSVal join]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setMiterLimit Mozilla CanvasRenderingContext2D.setMiterLimit documentation> 
setMiterLimitFunction ::
                      (MonadDOM m) => CanvasRenderingContext2D -> Float -> m ()
setMiterLimitFunction self limit
  = liftDOM (void (self ^. jsf "setMiterLimit" [toJSVal limit]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.clearShadow Mozilla CanvasRenderingContext2D.clearShadow documentation> 
clearShadow :: (MonadDOM m) => CanvasRenderingContext2D -> m ()
clearShadow self = liftDOM (void (self ^. js "clearShadow"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fillText Mozilla CanvasRenderingContext2D.fillText documentation> 
fillText ::
         (MonadDOM m, ToJSString text) =>
           CanvasRenderingContext2D -> text -> Float -> Float -> Float -> m ()
fillText self text x y maxWidth
  = liftDOM
      (void
         (self ^. jsf "fillText"
            [toJSVal text, toJSVal x, toJSVal y, toJSVal maxWidth]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.strokeText Mozilla CanvasRenderingContext2D.strokeText documentation> 
strokeText ::
           (MonadDOM m, ToJSString text) =>
             CanvasRenderingContext2D -> text -> Float -> Float -> Float -> m ()
strokeText self text x y maxWidth
  = liftDOM
      (void
         (self ^. jsf "strokeText"
            [toJSVal text, toJSVal x, toJSVal y, toJSVal maxWidth]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setStrokeColor Mozilla CanvasRenderingContext2D.setStrokeColor documentation> 
setStrokeColor ::
               (MonadDOM m, ToJSString color) =>
                 CanvasRenderingContext2D -> color -> Float -> m ()
setStrokeColor self color alpha
  = liftDOM
      (void
         (self ^. jsf "setStrokeColor" [toJSVal color, toJSVal alpha]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setStrokeColor Mozilla CanvasRenderingContext2D.setStrokeColor documentation> 
setStrokeColorGray ::
                   (MonadDOM m) => CanvasRenderingContext2D -> Float -> Float -> m ()
setStrokeColorGray self grayLevel alpha
  = liftDOM
      (void
         (self ^. jsf "setStrokeColor" [toJSVal grayLevel, toJSVal alpha]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setStrokeColor Mozilla CanvasRenderingContext2D.setStrokeColor documentation> 
setStrokeColorRGB ::
                  (MonadDOM m) =>
                    CanvasRenderingContext2D ->
                      Float -> Float -> Float -> Float -> m ()
setStrokeColorRGB self r g b a
  = liftDOM
      (void
         (self ^. jsf "setStrokeColor"
            [toJSVal r, toJSVal g, toJSVal b, toJSVal a]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setStrokeColor Mozilla CanvasRenderingContext2D.setStrokeColor documentation> 
setStrokeColorCYMK ::
                   (MonadDOM m) =>
                     CanvasRenderingContext2D ->
                       Float -> Float -> Float -> Float -> Float -> m ()
setStrokeColorCYMK self c m y k a
  = liftDOM
      (void
         (self ^. jsf "setStrokeColor"
            [toJSVal c, toJSVal m, toJSVal y, toJSVal k, toJSVal a]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setFillColor Mozilla CanvasRenderingContext2D.setFillColor documentation> 
setFillColor ::
             (MonadDOM m, ToJSString color) =>
               CanvasRenderingContext2D -> color -> Float -> m ()
setFillColor self color alpha
  = liftDOM
      (void (self ^. jsf "setFillColor" [toJSVal color, toJSVal alpha]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setFillColor Mozilla CanvasRenderingContext2D.setFillColor documentation> 
setFillColorGray ::
                 (MonadDOM m) => CanvasRenderingContext2D -> Float -> Float -> m ()
setFillColorGray self grayLevel alpha
  = liftDOM
      (void
         (self ^. jsf "setFillColor" [toJSVal grayLevel, toJSVal alpha]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setFillColor Mozilla CanvasRenderingContext2D.setFillColor documentation> 
setFillColorRGB ::
                (MonadDOM m) =>
                  CanvasRenderingContext2D ->
                    Float -> Float -> Float -> Float -> m ()
setFillColorRGB self r g b a
  = liftDOM
      (void
         (self ^. jsf "setFillColor"
            [toJSVal r, toJSVal g, toJSVal b, toJSVal a]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setFillColor Mozilla CanvasRenderingContext2D.setFillColor documentation> 
setFillColorCYMK ::
                 (MonadDOM m) =>
                   CanvasRenderingContext2D ->
                     Float -> Float -> Float -> Float -> Float -> m ()
setFillColorCYMK self c m y k a
  = liftDOM
      (void
         (self ^. jsf "setFillColor"
            [toJSVal c, toJSVal m, toJSVal y, toJSVal k, toJSVal a]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.strokeRect Mozilla CanvasRenderingContext2D.strokeRect documentation> 
strokeRect ::
           (MonadDOM m) =>
             CanvasRenderingContext2D ->
               Float -> Float -> Float -> Float -> m ()
strokeRect self x y width height
  = liftDOM
      (void
         (self ^. jsf "strokeRect"
            [toJSVal x, toJSVal y, toJSVal width, toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
drawImage ::
          (MonadDOM m) =>
            CanvasRenderingContext2D ->
              Maybe HTMLImageElement -> Float -> Float -> m ()
drawImage self image x y
  = liftDOM
      (void
         (self ^. jsf "drawImage" [toJSVal image, toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
drawImageScaled ::
                (MonadDOM m) =>
                  CanvasRenderingContext2D ->
                    Maybe HTMLImageElement -> Float -> Float -> Float -> Float -> m ()
drawImageScaled self image x y width height
  = liftDOM
      (void
         (self ^. jsf "drawImage"
            [toJSVal image, toJSVal x, toJSVal y, toJSVal width,
             toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
drawImagePart ::
              (MonadDOM m) =>
                CanvasRenderingContext2D ->
                  Maybe HTMLImageElement ->
                    Float ->
                      Float -> Float -> Float -> Float -> Float -> Float -> Float -> m ()
drawImagePart self image sx sy sw sh dx dy dw dh
  = liftDOM
      (void
         (self ^. jsf "drawImage"
            [toJSVal image, toJSVal sx, toJSVal sy, toJSVal sw, toJSVal sh,
             toJSVal dx, toJSVal dy, toJSVal dw, toJSVal dh]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
drawImageFromCanvas ::
                    (MonadDOM m) =>
                      CanvasRenderingContext2D ->
                        Maybe HTMLCanvasElement -> Float -> Float -> m ()
drawImageFromCanvas self canvas x y
  = liftDOM
      (void
         (self ^. jsf "drawImage" [toJSVal canvas, toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
drawImageFromCanvasScaled ::
                          (MonadDOM m) =>
                            CanvasRenderingContext2D ->
                              Maybe HTMLCanvasElement -> Float -> Float -> Float -> Float -> m ()
drawImageFromCanvasScaled self canvas x y width height
  = liftDOM
      (void
         (self ^. jsf "drawImage"
            [toJSVal canvas, toJSVal x, toJSVal y, toJSVal width,
             toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
drawImageFromCanvasPart ::
                        (MonadDOM m) =>
                          CanvasRenderingContext2D ->
                            Maybe HTMLCanvasElement ->
                              Float ->
                                Float -> Float -> Float -> Float -> Float -> Float -> Float -> m ()
drawImageFromCanvasPart self canvas sx sy sw sh dx dy dw dh
  = liftDOM
      (void
         (self ^. jsf "drawImage"
            [toJSVal canvas, toJSVal sx, toJSVal sy, toJSVal sw, toJSVal sh,
             toJSVal dx, toJSVal dy, toJSVal dw, toJSVal dh]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
drawImageFromVideo ::
                   (MonadDOM m) =>
                     CanvasRenderingContext2D ->
                       Maybe HTMLVideoElement -> Float -> Float -> m ()
drawImageFromVideo self video x y
  = liftDOM
      (void
         (self ^. jsf "drawImage" [toJSVal video, toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
drawImageFromVideoScaled ::
                         (MonadDOM m) =>
                           CanvasRenderingContext2D ->
                             Maybe HTMLVideoElement -> Float -> Float -> Float -> Float -> m ()
drawImageFromVideoScaled self video x y width height
  = liftDOM
      (void
         (self ^. jsf "drawImage"
            [toJSVal video, toJSVal x, toJSVal y, toJSVal width,
             toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImage Mozilla CanvasRenderingContext2D.drawImage documentation> 
drawImageFromVideoPart ::
                       (MonadDOM m) =>
                         CanvasRenderingContext2D ->
                           Maybe HTMLVideoElement ->
                             Float ->
                               Float -> Float -> Float -> Float -> Float -> Float -> Float -> m ()
drawImageFromVideoPart self video sx sy sw sh dx dy dw dh
  = liftDOM
      (void
         (self ^. jsf "drawImage"
            [toJSVal video, toJSVal sx, toJSVal sy, toJSVal sw, toJSVal sh,
             toJSVal dx, toJSVal dy, toJSVal dw, toJSVal dh]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawImageFromRect Mozilla CanvasRenderingContext2D.drawImageFromRect documentation> 
drawImageFromRect ::
                  (MonadDOM m, ToJSString compositeOperation) =>
                    CanvasRenderingContext2D ->
                      Maybe HTMLImageElement ->
                        Float ->
                          Float ->
                            Float ->
                              Float ->
                                Float -> Float -> Float -> Float -> compositeOperation -> m ()
drawImageFromRect self image sx sy sw sh dx dy dw dh
  compositeOperation
  = liftDOM
      (void
         (self ^. jsf "drawImageFromRect"
            [toJSVal image, toJSVal sx, toJSVal sy, toJSVal sw, toJSVal sh,
             toJSVal dx, toJSVal dy, toJSVal dw, toJSVal dh,
             toJSVal compositeOperation]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setShadow Mozilla CanvasRenderingContext2D.setShadow documentation> 
setShadow ::
          (MonadDOM m, ToJSString color) =>
            CanvasRenderingContext2D ->
              Float -> Float -> Float -> color -> Float -> m ()
setShadow self width height blur color alpha
  = liftDOM
      (void
         (self ^. jsf "setShadow"
            [toJSVal width, toJSVal height, toJSVal blur, toJSVal color,
             toJSVal alpha]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setShadow Mozilla CanvasRenderingContext2D.setShadow documentation> 
setShadowGray ::
              (MonadDOM m) =>
                CanvasRenderingContext2D ->
                  Float -> Float -> Float -> Float -> Float -> m ()
setShadowGray self width height blur grayLevel alpha
  = liftDOM
      (void
         (self ^. jsf "setShadow"
            [toJSVal width, toJSVal height, toJSVal blur, toJSVal grayLevel,
             toJSVal alpha]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setShadow Mozilla CanvasRenderingContext2D.setShadow documentation> 
setShadowRGB ::
             (MonadDOM m) =>
               CanvasRenderingContext2D ->
                 Float -> Float -> Float -> Float -> Float -> Float -> Float -> m ()
setShadowRGB self width height blur r g b a
  = liftDOM
      (void
         (self ^. jsf "setShadow"
            [toJSVal width, toJSVal height, toJSVal blur, toJSVal r, toJSVal g,
             toJSVal b, toJSVal a]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.setShadow Mozilla CanvasRenderingContext2D.setShadow documentation> 
setShadowCYMK ::
              (MonadDOM m) =>
                CanvasRenderingContext2D ->
                  Float ->
                    Float -> Float -> Float -> Float -> Float -> Float -> Float -> m ()
setShadowCYMK self width height blur c m y k a
  = liftDOM
      (void
         (self ^. jsf "setShadow"
            [toJSVal width, toJSVal height, toJSVal blur, toJSVal c, toJSVal m,
             toJSVal y, toJSVal k, toJSVal a]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.putImageData Mozilla CanvasRenderingContext2D.putImageData documentation> 
putImageData ::
             (MonadDOM m) =>
               CanvasRenderingContext2D ->
                 Maybe ImageData -> Float -> Float -> m ()
putImageData self imagedata dx dy
  = liftDOM
      (void
         (self ^. jsf "putImageData"
            [toJSVal imagedata, toJSVal dx, toJSVal dy]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.putImageData Mozilla CanvasRenderingContext2D.putImageData documentation> 
putImageDataDirty ::
                  (MonadDOM m) =>
                    CanvasRenderingContext2D ->
                      Maybe ImageData ->
                        Float -> Float -> Float -> Float -> Float -> Float -> m ()
putImageDataDirty self imagedata dx dy dirtyX dirtyY dirtyWidth
  dirtyHeight
  = liftDOM
      (void
         (self ^. jsf "putImageData"
            [toJSVal imagedata, toJSVal dx, toJSVal dy, toJSVal dirtyX,
             toJSVal dirtyY, toJSVal dirtyWidth, toJSVal dirtyHeight]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitPutImageDataHD Mozilla CanvasRenderingContext2D.webkitPutImageDataHD documentation> 
webkitPutImageDataHD ::
                     (MonadDOM m) =>
                       CanvasRenderingContext2D ->
                         Maybe ImageData -> Float -> Float -> m ()
webkitPutImageDataHD self imagedata dx dy
  = liftDOM
      (void
         (self ^. jsf "webkitPutImageDataHD"
            [toJSVal imagedata, toJSVal dx, toJSVal dy]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitPutImageDataHD Mozilla CanvasRenderingContext2D.webkitPutImageDataHD documentation> 
webkitPutImageDataHDDirty ::
                          (MonadDOM m) =>
                            CanvasRenderingContext2D ->
                              Maybe ImageData ->
                                Float -> Float -> Float -> Float -> Float -> Float -> m ()
webkitPutImageDataHDDirty self imagedata dx dy dirtyX dirtyY
  dirtyWidth dirtyHeight
  = liftDOM
      (void
         (self ^. jsf "webkitPutImageDataHD"
            [toJSVal imagedata, toJSVal dx, toJSVal dy, toJSVal dirtyX,
             toJSVal dirtyY, toJSVal dirtyWidth, toJSVal dirtyHeight]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.createPattern Mozilla CanvasRenderingContext2D.createPattern documentation> 
createPatternFromCanvas ::
                        (MonadDOM m, ToJSString repetitionType) =>
                          CanvasRenderingContext2D ->
                            Maybe HTMLCanvasElement ->
                              Maybe repetitionType -> m (Maybe CanvasPattern)
createPatternFromCanvas self canvas repetitionType
  = liftDOM
      ((self ^. jsf "createPattern"
          [toJSVal canvas, toJSVal repetitionType])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.createPattern Mozilla CanvasRenderingContext2D.createPattern documentation> 
createPattern ::
              (MonadDOM m, ToJSString repetitionType) =>
                CanvasRenderingContext2D ->
                  Maybe HTMLImageElement ->
                    Maybe repetitionType -> m (Maybe CanvasPattern)
createPattern self image repetitionType
  = liftDOM
      ((self ^. jsf "createPattern"
          [toJSVal image, toJSVal repetitionType])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.createImageData Mozilla CanvasRenderingContext2D.createImageData documentation> 
createImageData ::
                (MonadDOM m) =>
                  CanvasRenderingContext2D -> Maybe ImageData -> m (Maybe ImageData)
createImageData self imagedata
  = liftDOM
      ((self ^. jsf "createImageData" [toJSVal imagedata]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.createImageData Mozilla CanvasRenderingContext2D.createImageData documentation> 
createImageDataSize ::
                    (MonadDOM m) =>
                      CanvasRenderingContext2D -> Float -> Float -> m (Maybe ImageData)
createImageDataSize self sw sh
  = liftDOM
      ((self ^. jsf "createImageData" [toJSVal sw, toJSVal sh]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.getImageData Mozilla CanvasRenderingContext2D.getImageData documentation> 
getImageData ::
             (MonadDOM m) =>
               CanvasRenderingContext2D ->
                 Float -> Float -> Float -> Float -> m (Maybe ImageData)
getImageData self sx sy sw sh
  = liftDOM
      ((self ^. jsf "getImageData"
          [toJSVal sx, toJSVal sy, toJSVal sw, toJSVal sh])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitGetImageDataHD Mozilla CanvasRenderingContext2D.webkitGetImageDataHD documentation> 
webkitGetImageDataHD ::
                     (MonadDOM m) =>
                       CanvasRenderingContext2D ->
                         Float -> Float -> Float -> Float -> m (Maybe ImageData)
webkitGetImageDataHD self sx sy sw sh
  = liftDOM
      ((self ^. jsf "webkitGetImageDataHD"
          [toJSVal sx, toJSVal sy, toJSVal sw, toJSVal sh])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawFocusIfNeeded Mozilla CanvasRenderingContext2D.drawFocusIfNeeded documentation> 
drawFocusIfNeeded ::
                  (MonadDOM m, IsElement element) =>
                    CanvasRenderingContext2D -> Maybe element -> m ()
drawFocusIfNeeded self element
  = liftDOM
      (void (self ^. jsf "drawFocusIfNeeded" [toJSVal element]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.drawFocusIfNeeded Mozilla CanvasRenderingContext2D.drawFocusIfNeeded documentation> 
drawFocusIfNeededPath ::
                      (MonadDOM m, IsElement element) =>
                        CanvasRenderingContext2D -> Maybe Path2D -> Maybe element -> m ()
drawFocusIfNeededPath self path element
  = liftDOM
      (void
         (self ^. jsf "drawFocusIfNeeded" [toJSVal path, toJSVal element]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.globalAlpha Mozilla CanvasRenderingContext2D.globalAlpha documentation> 
setGlobalAlpha ::
               (MonadDOM m) => CanvasRenderingContext2D -> Float -> m ()
setGlobalAlpha self val
  = liftDOM (self ^. jss "globalAlpha" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.globalAlpha Mozilla CanvasRenderingContext2D.globalAlpha documentation> 
getGlobalAlpha ::
               (MonadDOM m) => CanvasRenderingContext2D -> m Float
getGlobalAlpha self
  = liftDOM
      (realToFrac <$> ((self ^. js "globalAlpha") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.globalCompositeOperation Mozilla CanvasRenderingContext2D.globalCompositeOperation documentation> 
setGlobalCompositeOperation ::
                            (MonadDOM m, ToJSString val) =>
                              CanvasRenderingContext2D -> Maybe val -> m ()
setGlobalCompositeOperation self val
  = liftDOM (self ^. jss "globalCompositeOperation" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.globalCompositeOperation Mozilla CanvasRenderingContext2D.globalCompositeOperation documentation> 
getGlobalCompositeOperation ::
                            (MonadDOM m, FromJSString result) =>
                              CanvasRenderingContext2D -> m (Maybe result)
getGlobalCompositeOperation self
  = liftDOM
      ((self ^. js "globalCompositeOperation") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineWidth Mozilla CanvasRenderingContext2D.lineWidth documentation> 
setLineWidth ::
             (MonadDOM m) => CanvasRenderingContext2D -> Float -> m ()
setLineWidth self val
  = liftDOM (self ^. jss "lineWidth" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineWidth Mozilla CanvasRenderingContext2D.lineWidth documentation> 
getLineWidth :: (MonadDOM m) => CanvasRenderingContext2D -> m Float
getLineWidth self
  = liftDOM
      (realToFrac <$> ((self ^. js "lineWidth") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineCap Mozilla CanvasRenderingContext2D.lineCap documentation> 
setLineCap ::
           (MonadDOM m, ToJSString val) =>
             CanvasRenderingContext2D -> Maybe val -> m ()
setLineCap self val = liftDOM (self ^. jss "lineCap" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineCap Mozilla CanvasRenderingContext2D.lineCap documentation> 
getLineCap ::
           (MonadDOM m, FromJSString result) =>
             CanvasRenderingContext2D -> m (Maybe result)
getLineCap self
  = liftDOM ((self ^. js "lineCap") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineJoin Mozilla CanvasRenderingContext2D.lineJoin documentation> 
setLineJoin ::
            (MonadDOM m, ToJSString val) =>
              CanvasRenderingContext2D -> Maybe val -> m ()
setLineJoin self val
  = liftDOM (self ^. jss "lineJoin" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineJoin Mozilla CanvasRenderingContext2D.lineJoin documentation> 
getLineJoin ::
            (MonadDOM m, FromJSString result) =>
              CanvasRenderingContext2D -> m (Maybe result)
getLineJoin self
  = liftDOM ((self ^. js "lineJoin") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.miterLimit Mozilla CanvasRenderingContext2D.miterLimit documentation> 
setMiterLimit ::
              (MonadDOM m) => CanvasRenderingContext2D -> Float -> m ()
setMiterLimit self val
  = liftDOM (self ^. jss "miterLimit" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.miterLimit Mozilla CanvasRenderingContext2D.miterLimit documentation> 
getMiterLimit ::
              (MonadDOM m) => CanvasRenderingContext2D -> m Float
getMiterLimit self
  = liftDOM
      (realToFrac <$> ((self ^. js "miterLimit") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowOffsetX Mozilla CanvasRenderingContext2D.shadowOffsetX documentation> 
setShadowOffsetX ::
                 (MonadDOM m) => CanvasRenderingContext2D -> Float -> m ()
setShadowOffsetX self val
  = liftDOM (self ^. jss "shadowOffsetX" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowOffsetX Mozilla CanvasRenderingContext2D.shadowOffsetX documentation> 
getShadowOffsetX ::
                 (MonadDOM m) => CanvasRenderingContext2D -> m Float
getShadowOffsetX self
  = liftDOM
      (realToFrac <$> ((self ^. js "shadowOffsetX") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowOffsetY Mozilla CanvasRenderingContext2D.shadowOffsetY documentation> 
setShadowOffsetY ::
                 (MonadDOM m) => CanvasRenderingContext2D -> Float -> m ()
setShadowOffsetY self val
  = liftDOM (self ^. jss "shadowOffsetY" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowOffsetY Mozilla CanvasRenderingContext2D.shadowOffsetY documentation> 
getShadowOffsetY ::
                 (MonadDOM m) => CanvasRenderingContext2D -> m Float
getShadowOffsetY self
  = liftDOM
      (realToFrac <$> ((self ^. js "shadowOffsetY") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowBlur Mozilla CanvasRenderingContext2D.shadowBlur documentation> 
setShadowBlur ::
              (MonadDOM m) => CanvasRenderingContext2D -> Float -> m ()
setShadowBlur self val
  = liftDOM (self ^. jss "shadowBlur" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowBlur Mozilla CanvasRenderingContext2D.shadowBlur documentation> 
getShadowBlur ::
              (MonadDOM m) => CanvasRenderingContext2D -> m Float
getShadowBlur self
  = liftDOM
      (realToFrac <$> ((self ^. js "shadowBlur") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowColor Mozilla CanvasRenderingContext2D.shadowColor documentation> 
setShadowColor ::
               (MonadDOM m, ToJSString val) =>
                 CanvasRenderingContext2D -> Maybe val -> m ()
setShadowColor self val
  = liftDOM (self ^. jss "shadowColor" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.shadowColor Mozilla CanvasRenderingContext2D.shadowColor documentation> 
getShadowColor ::
               (MonadDOM m, FromJSString result) =>
                 CanvasRenderingContext2D -> m (Maybe result)
getShadowColor self
  = liftDOM ((self ^. js "shadowColor") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineDashOffset Mozilla CanvasRenderingContext2D.lineDashOffset documentation> 
setLineDashOffset ::
                  (MonadDOM m) => CanvasRenderingContext2D -> Float -> m ()
setLineDashOffset self val
  = liftDOM (self ^. jss "lineDashOffset" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.lineDashOffset Mozilla CanvasRenderingContext2D.lineDashOffset documentation> 
getLineDashOffset ::
                  (MonadDOM m) => CanvasRenderingContext2D -> m Float
getLineDashOffset self
  = liftDOM
      (realToFrac <$> ((self ^. js "lineDashOffset") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitLineDash Mozilla CanvasRenderingContext2D.webkitLineDash documentation> 
setWebkitLineDash ::
                  (MonadDOM m, IsArray val) =>
                    CanvasRenderingContext2D -> Maybe val -> m ()
setWebkitLineDash self val
  = liftDOM (self ^. jss "webkitLineDash" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitLineDash Mozilla CanvasRenderingContext2D.webkitLineDash documentation> 
getWebkitLineDash ::
                  (MonadDOM m) => CanvasRenderingContext2D -> m (Maybe Array)
getWebkitLineDash self
  = liftDOM ((self ^. js "webkitLineDash") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitLineDashOffset Mozilla CanvasRenderingContext2D.webkitLineDashOffset documentation> 
setWebkitLineDashOffset ::
                        (MonadDOM m) => CanvasRenderingContext2D -> Float -> m ()
setWebkitLineDashOffset self val
  = liftDOM (self ^. jss "webkitLineDashOffset" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitLineDashOffset Mozilla CanvasRenderingContext2D.webkitLineDashOffset documentation> 
getWebkitLineDashOffset ::
                        (MonadDOM m) => CanvasRenderingContext2D -> m Float
getWebkitLineDashOffset self
  = liftDOM
      (realToFrac <$>
         ((self ^. js "webkitLineDashOffset") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.font Mozilla CanvasRenderingContext2D.font documentation> 
setFont ::
        (MonadDOM m, ToJSString val) =>
          CanvasRenderingContext2D -> val -> m ()
setFont self val = liftDOM (self ^. jss "font" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.font Mozilla CanvasRenderingContext2D.font documentation> 
getFont ::
        (MonadDOM m, FromJSString result) =>
          CanvasRenderingContext2D -> m result
getFont self = liftDOM ((self ^. js "font") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.textAlign Mozilla CanvasRenderingContext2D.textAlign documentation> 
setTextAlign ::
             (MonadDOM m, ToJSString val) =>
               CanvasRenderingContext2D -> val -> m ()
setTextAlign self val
  = liftDOM (self ^. jss "textAlign" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.textAlign Mozilla CanvasRenderingContext2D.textAlign documentation> 
getTextAlign ::
             (MonadDOM m, FromJSString result) =>
               CanvasRenderingContext2D -> m result
getTextAlign self
  = liftDOM ((self ^. js "textAlign") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.textBaseline Mozilla CanvasRenderingContext2D.textBaseline documentation> 
setTextBaseline ::
                (MonadDOM m, ToJSString val) =>
                  CanvasRenderingContext2D -> val -> m ()
setTextBaseline self val
  = liftDOM (self ^. jss "textBaseline" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.textBaseline Mozilla CanvasRenderingContext2D.textBaseline documentation> 
getTextBaseline ::
                (MonadDOM m, FromJSString result) =>
                  CanvasRenderingContext2D -> m result
getTextBaseline self
  = liftDOM ((self ^. js "textBaseline") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.direction Mozilla CanvasRenderingContext2D.direction documentation> 
setDirection ::
             (MonadDOM m, ToJSString val) =>
               CanvasRenderingContext2D -> val -> m ()
setDirection self val
  = liftDOM (self ^. jss "direction" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.direction Mozilla CanvasRenderingContext2D.direction documentation> 
getDirection ::
             (MonadDOM m, FromJSString result) =>
               CanvasRenderingContext2D -> m result
getDirection self
  = liftDOM ((self ^. js "direction") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.strokeStyle Mozilla CanvasRenderingContext2D.strokeStyle documentation> 
setStrokeStyle ::
               (MonadDOM m, IsCanvasStyle val) =>
                 CanvasRenderingContext2D -> Maybe val -> m ()
setStrokeStyle self val
  = liftDOM (self ^. jss "strokeStyle" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.strokeStyle Mozilla CanvasRenderingContext2D.strokeStyle documentation> 
getStrokeStyle ::
               (MonadDOM m) => CanvasRenderingContext2D -> m (Maybe CanvasStyle)
getStrokeStyle self
  = liftDOM ((self ^. js "strokeStyle") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fillStyle Mozilla CanvasRenderingContext2D.fillStyle documentation> 
setFillStyle ::
             (MonadDOM m, IsCanvasStyle val) =>
               CanvasRenderingContext2D -> Maybe val -> m ()
setFillStyle self val
  = liftDOM (self ^. jss "fillStyle" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.fillStyle Mozilla CanvasRenderingContext2D.fillStyle documentation> 
getFillStyle ::
             (MonadDOM m) => CanvasRenderingContext2D -> m (Maybe CanvasStyle)
getFillStyle self
  = liftDOM ((self ^. js "fillStyle") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitBackingStorePixelRatio Mozilla CanvasRenderingContext2D.webkitBackingStorePixelRatio documentation> 
getWebkitBackingStorePixelRatio ::
                                (MonadDOM m) => CanvasRenderingContext2D -> m Float
getWebkitBackingStorePixelRatio self
  = liftDOM
      (realToFrac <$>
         ((self ^. js "webkitBackingStorePixelRatio") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitImageSmoothingEnabled Mozilla CanvasRenderingContext2D.webkitImageSmoothingEnabled documentation> 
setWebkitImageSmoothingEnabled ::
                               (MonadDOM m) => CanvasRenderingContext2D -> Bool -> m ()
setWebkitImageSmoothingEnabled self val
  = liftDOM (self ^. jss "webkitImageSmoothingEnabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D.webkitImageSmoothingEnabled Mozilla CanvasRenderingContext2D.webkitImageSmoothingEnabled documentation> 
getWebkitImageSmoothingEnabled ::
                               (MonadDOM m) => CanvasRenderingContext2D -> m Bool
getWebkitImageSmoothingEnabled self
  = liftDOM
      ((self ^. js "webkitImageSmoothingEnabled") >>= valToBool)
