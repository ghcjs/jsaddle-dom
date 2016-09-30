{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPathElement
       (getTotalLength, getPointAtLength, getPathSegAtLength,
        createSVGPathSegClosePath, createSVGPathSegMovetoAbs,
        createSVGPathSegMovetoRel, createSVGPathSegLinetoAbs,
        createSVGPathSegLinetoRel, createSVGPathSegCurvetoCubicAbs,
        createSVGPathSegCurvetoCubicRel,
        createSVGPathSegCurvetoQuadraticAbs,
        createSVGPathSegCurvetoQuadraticRel, createSVGPathSegArcAbs,
        createSVGPathSegArcRel, createSVGPathSegLinetoHorizontalAbs,
        createSVGPathSegLinetoHorizontalRel,
        createSVGPathSegLinetoVerticalAbs,
        createSVGPathSegLinetoVerticalRel,
        createSVGPathSegCurvetoCubicSmoothAbs,
        createSVGPathSegCurvetoCubicSmoothRel,
        createSVGPathSegCurvetoQuadraticSmoothAbs,
        createSVGPathSegCurvetoQuadraticSmoothRel, getPathLength,
        getPathSegList, getNormalizedPathSegList, getAnimatedPathSegList,
        getAnimatedNormalizedPathSegList, SVGPathElement,
        castToSVGPathElement, gTypeSVGPathElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getTotalLength Mozilla SVGPathElement.getTotalLength documentation> 
getTotalLength :: (MonadDOM m) => SVGPathElement -> m Float
getTotalLength self
  = liftDOM
      (realToFrac <$> ((self ^. js "getTotalLength") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPointAtLength Mozilla SVGPathElement.getPointAtLength documentation> 
getPointAtLength ::
                 (MonadDOM m) => SVGPathElement -> Float -> m (Maybe SVGPoint)
getPointAtLength self distance
  = liftDOM
      ((self ^. jsf "getPointAtLength" [toJSVal distance]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPathSegAtLength Mozilla SVGPathElement.getPathSegAtLength documentation> 
getPathSegAtLength ::
                   (MonadDOM m) => SVGPathElement -> Float -> m Word
getPathSegAtLength self distance
  = liftDOM
      (round <$>
         ((self ^. jsf "getPathSegAtLength" [toJSVal distance]) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegClosePath Mozilla SVGPathElement.createSVGPathSegClosePath documentation> 
createSVGPathSegClosePath ::
                          (MonadDOM m) => SVGPathElement -> m (Maybe SVGPathSegClosePath)
createSVGPathSegClosePath self
  = liftDOM ((self ^. js "createSVGPathSegClosePath") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoAbs Mozilla SVGPathElement.createSVGPathSegMovetoAbs documentation> 
createSVGPathSegMovetoAbs ::
                          (MonadDOM m) =>
                            SVGPathElement -> Float -> Float -> m (Maybe SVGPathSegMovetoAbs)
createSVGPathSegMovetoAbs self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegMovetoAbs" [toJSVal x, toJSVal y])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoRel Mozilla SVGPathElement.createSVGPathSegMovetoRel documentation> 
createSVGPathSegMovetoRel ::
                          (MonadDOM m) =>
                            SVGPathElement -> Float -> Float -> m (Maybe SVGPathSegMovetoRel)
createSVGPathSegMovetoRel self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegMovetoRel" [toJSVal x, toJSVal y])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoAbs Mozilla SVGPathElement.createSVGPathSegLinetoAbs documentation> 
createSVGPathSegLinetoAbs ::
                          (MonadDOM m) =>
                            SVGPathElement -> Float -> Float -> m (Maybe SVGPathSegLinetoAbs)
createSVGPathSegLinetoAbs self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoAbs" [toJSVal x, toJSVal y])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoRel Mozilla SVGPathElement.createSVGPathSegLinetoRel documentation> 
createSVGPathSegLinetoRel ::
                          (MonadDOM m) =>
                            SVGPathElement -> Float -> Float -> m (Maybe SVGPathSegLinetoRel)
createSVGPathSegLinetoRel self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoRel" [toJSVal x, toJSVal y])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicAbs documentation> 
createSVGPathSegCurvetoCubicAbs ::
                                (MonadDOM m) =>
                                  SVGPathElement ->
                                    Float ->
                                      Float ->
                                        Float ->
                                          Float ->
                                            Float -> Float -> m (Maybe SVGPathSegCurvetoCubicAbs)
createSVGPathSegCurvetoCubicAbs self x y x1 y1 x2 y2
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoCubicAbs"
          [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1, toJSVal x2,
           toJSVal y2])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicRel documentation> 
createSVGPathSegCurvetoCubicRel ::
                                (MonadDOM m) =>
                                  SVGPathElement ->
                                    Float ->
                                      Float ->
                                        Float ->
                                          Float ->
                                            Float -> Float -> m (Maybe SVGPathSegCurvetoCubicRel)
createSVGPathSegCurvetoCubicRel self x y x1 y1 x2 y2
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoCubicRel"
          [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1, toJSVal x2,
           toJSVal y2])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticAbs documentation> 
createSVGPathSegCurvetoQuadraticAbs ::
                                    (MonadDOM m) =>
                                      SVGPathElement ->
                                        Float ->
                                          Float ->
                                            Float ->
                                              Float -> m (Maybe SVGPathSegCurvetoQuadraticAbs)
createSVGPathSegCurvetoQuadraticAbs self x y x1 y1
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoQuadraticAbs"
          [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticRel documentation> 
createSVGPathSegCurvetoQuadraticRel ::
                                    (MonadDOM m) =>
                                      SVGPathElement ->
                                        Float ->
                                          Float ->
                                            Float ->
                                              Float -> m (Maybe SVGPathSegCurvetoQuadraticRel)
createSVGPathSegCurvetoQuadraticRel self x y x1 y1
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoQuadraticRel"
          [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcAbs Mozilla SVGPathElement.createSVGPathSegArcAbs documentation> 
createSVGPathSegArcAbs ::
                       (MonadDOM m) =>
                         SVGPathElement ->
                           Float ->
                             Float ->
                               Float ->
                                 Float -> Float -> Bool -> Bool -> m (Maybe SVGPathSegArcAbs)
createSVGPathSegArcAbs self x y r1 r2 angle largeArcFlag sweepFlag
  = liftDOM
      ((self ^. jsf "createSVGPathSegArcAbs"
          [toJSVal x, toJSVal y, toJSVal r1, toJSVal r2, toJSVal angle,
           toJSVal largeArcFlag, toJSVal sweepFlag])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcRel Mozilla SVGPathElement.createSVGPathSegArcRel documentation> 
createSVGPathSegArcRel ::
                       (MonadDOM m) =>
                         SVGPathElement ->
                           Float ->
                             Float ->
                               Float ->
                                 Float -> Float -> Bool -> Bool -> m (Maybe SVGPathSegArcRel)
createSVGPathSegArcRel self x y r1 r2 angle largeArcFlag sweepFlag
  = liftDOM
      ((self ^. jsf "createSVGPathSegArcRel"
          [toJSVal x, toJSVal y, toJSVal r1, toJSVal r2, toJSVal angle,
           toJSVal largeArcFlag, toJSVal sweepFlag])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalAbs Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalAbs documentation> 
createSVGPathSegLinetoHorizontalAbs ::
                                    (MonadDOM m) =>
                                      SVGPathElement ->
                                        Float -> m (Maybe SVGPathSegLinetoHorizontalAbs)
createSVGPathSegLinetoHorizontalAbs self x
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoHorizontalAbs" [toJSVal x])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalRel Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalRel documentation> 
createSVGPathSegLinetoHorizontalRel ::
                                    (MonadDOM m) =>
                                      SVGPathElement ->
                                        Float -> m (Maybe SVGPathSegLinetoHorizontalRel)
createSVGPathSegLinetoHorizontalRel self x
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoHorizontalRel" [toJSVal x])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalAbs Mozilla SVGPathElement.createSVGPathSegLinetoVerticalAbs documentation> 
createSVGPathSegLinetoVerticalAbs ::
                                  (MonadDOM m) =>
                                    SVGPathElement -> Float -> m (Maybe SVGPathSegLinetoVerticalAbs)
createSVGPathSegLinetoVerticalAbs self y
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoVerticalAbs" [toJSVal y]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalRel Mozilla SVGPathElement.createSVGPathSegLinetoVerticalRel documentation> 
createSVGPathSegLinetoVerticalRel ::
                                  (MonadDOM m) =>
                                    SVGPathElement -> Float -> m (Maybe SVGPathSegLinetoVerticalRel)
createSVGPathSegLinetoVerticalRel self y
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoVerticalRel" [toJSVal y]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs documentation> 
createSVGPathSegCurvetoCubicSmoothAbs ::
                                      (MonadDOM m) =>
                                        SVGPathElement ->
                                          Float ->
                                            Float ->
                                              Float ->
                                                Float -> m (Maybe SVGPathSegCurvetoCubicSmoothAbs)
createSVGPathSegCurvetoCubicSmoothAbs self x y x2 y2
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoCubicSmoothAbs"
          [toJSVal x, toJSVal y, toJSVal x2, toJSVal y2])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel documentation> 
createSVGPathSegCurvetoCubicSmoothRel ::
                                      (MonadDOM m) =>
                                        SVGPathElement ->
                                          Float ->
                                            Float ->
                                              Float ->
                                                Float -> m (Maybe SVGPathSegCurvetoCubicSmoothRel)
createSVGPathSegCurvetoCubicSmoothRel self x y x2 y2
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoCubicSmoothRel"
          [toJSVal x, toJSVal y, toJSVal x2, toJSVal y2])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs documentation> 
createSVGPathSegCurvetoQuadraticSmoothAbs ::
                                          (MonadDOM m) =>
                                            SVGPathElement ->
                                              Float ->
                                                Float ->
                                                  m (Maybe SVGPathSegCurvetoQuadraticSmoothAbs)
createSVGPathSegCurvetoQuadraticSmoothAbs self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoQuadraticSmoothAbs"
          [toJSVal x, toJSVal y])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel documentation> 
createSVGPathSegCurvetoQuadraticSmoothRel ::
                                          (MonadDOM m) =>
                                            SVGPathElement ->
                                              Float ->
                                                Float ->
                                                  m (Maybe SVGPathSegCurvetoQuadraticSmoothRel)
createSVGPathSegCurvetoQuadraticSmoothRel self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoQuadraticSmoothRel"
          [toJSVal x, toJSVal y])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathLength Mozilla SVGPathElement.pathLength documentation> 
getPathLength ::
              (MonadDOM m) => SVGPathElement -> m (Maybe SVGAnimatedNumber)
getPathLength self
  = liftDOM ((self ^. js "pathLength") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathSegList Mozilla SVGPathElement.pathSegList documentation> 
getPathSegList ::
               (MonadDOM m) => SVGPathElement -> m (Maybe SVGPathSegList)
getPathSegList self
  = liftDOM ((self ^. js "pathSegList") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.normalizedPathSegList Mozilla SVGPathElement.normalizedPathSegList documentation> 
getNormalizedPathSegList ::
                         (MonadDOM m) => SVGPathElement -> m (Maybe SVGPathSegList)
getNormalizedPathSegList self
  = liftDOM ((self ^. js "normalizedPathSegList") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedPathSegList Mozilla SVGPathElement.animatedPathSegList documentation> 
getAnimatedPathSegList ::
                       (MonadDOM m) => SVGPathElement -> m (Maybe SVGPathSegList)
getAnimatedPathSegList self
  = liftDOM ((self ^. js "animatedPathSegList") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedNormalizedPathSegList Mozilla SVGPathElement.animatedNormalizedPathSegList documentation> 
getAnimatedNormalizedPathSegList ::
                                 (MonadDOM m) => SVGPathElement -> m (Maybe SVGPathSegList)
getAnimatedNormalizedPathSegList self
  = liftDOM
      ((self ^. js "animatedNormalizedPathSegList") >>= fromJSVal)
