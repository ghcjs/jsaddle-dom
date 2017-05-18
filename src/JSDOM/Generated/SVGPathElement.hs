{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPathElement
       (getTotalLength, getTotalLength_, getPointAtLength,
        getPointAtLength_, getPathSegAtLength, getPathSegAtLength_,
        createSVGPathSegClosePath, createSVGPathSegClosePath_,
        createSVGPathSegMovetoAbs, createSVGPathSegMovetoAbs_,
        createSVGPathSegMovetoRel, createSVGPathSegMovetoRel_,
        createSVGPathSegLinetoAbs, createSVGPathSegLinetoAbs_,
        createSVGPathSegLinetoRel, createSVGPathSegLinetoRel_,
        createSVGPathSegCurvetoCubicAbs, createSVGPathSegCurvetoCubicAbs_,
        createSVGPathSegCurvetoCubicRel, createSVGPathSegCurvetoCubicRel_,
        createSVGPathSegCurvetoQuadraticAbs,
        createSVGPathSegCurvetoQuadraticAbs_,
        createSVGPathSegCurvetoQuadraticRel,
        createSVGPathSegCurvetoQuadraticRel_, createSVGPathSegArcAbs,
        createSVGPathSegArcAbs_, createSVGPathSegArcRel,
        createSVGPathSegArcRel_, createSVGPathSegLinetoHorizontalAbs,
        createSVGPathSegLinetoHorizontalAbs_,
        createSVGPathSegLinetoHorizontalRel,
        createSVGPathSegLinetoHorizontalRel_,
        createSVGPathSegLinetoVerticalAbs,
        createSVGPathSegLinetoVerticalAbs_,
        createSVGPathSegLinetoVerticalRel,
        createSVGPathSegLinetoVerticalRel_,
        createSVGPathSegCurvetoCubicSmoothAbs,
        createSVGPathSegCurvetoCubicSmoothAbs_,
        createSVGPathSegCurvetoCubicSmoothRel,
        createSVGPathSegCurvetoCubicSmoothRel_,
        createSVGPathSegCurvetoQuadraticSmoothAbs,
        createSVGPathSegCurvetoQuadraticSmoothAbs_,
        createSVGPathSegCurvetoQuadraticSmoothRel,
        createSVGPathSegCurvetoQuadraticSmoothRel_, getPathLength,
        getPathSegList, getNormalizedPathSegList, getAnimatedPathSegList,
        getAnimatedNormalizedPathSegList, SVGPathElement(..),
        gTypeSVGPathElement)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getTotalLength Mozilla SVGPathElement.getTotalLength documentation> 
getTotalLength :: (MonadDOM m) => SVGPathElement -> m Float
getTotalLength self
  = liftDOM
      (realToFrac <$>
         ((self ^. jsf "getTotalLength" ()) >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getTotalLength Mozilla SVGPathElement.getTotalLength documentation> 
getTotalLength_ :: (MonadDOM m) => SVGPathElement -> m ()
getTotalLength_ self
  = liftDOM (void (self ^. jsf "getTotalLength" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPointAtLength Mozilla SVGPathElement.getPointAtLength documentation> 
getPointAtLength ::
                 (MonadDOM m) => SVGPathElement -> Maybe Float -> m SVGPoint
getPointAtLength self distance
  = liftDOM
      ((self ^. jsf "getPointAtLength" [toJSVal distance]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPointAtLength Mozilla SVGPathElement.getPointAtLength documentation> 
getPointAtLength_ ::
                  (MonadDOM m) => SVGPathElement -> Maybe Float -> m ()
getPointAtLength_ self distance
  = liftDOM
      (void (self ^. jsf "getPointAtLength" [toJSVal distance]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPathSegAtLength Mozilla SVGPathElement.getPathSegAtLength documentation> 
getPathSegAtLength ::
                   (MonadDOM m) => SVGPathElement -> Maybe Float -> m Word
getPathSegAtLength self distance
  = liftDOM
      (round <$>
         ((self ^. jsf "getPathSegAtLength" [toJSVal distance]) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPathSegAtLength Mozilla SVGPathElement.getPathSegAtLength documentation> 
getPathSegAtLength_ ::
                    (MonadDOM m) => SVGPathElement -> Maybe Float -> m ()
getPathSegAtLength_ self distance
  = liftDOM
      (void (self ^. jsf "getPathSegAtLength" [toJSVal distance]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegClosePath Mozilla SVGPathElement.createSVGPathSegClosePath documentation> 
createSVGPathSegClosePath ::
                          (MonadDOM m) => SVGPathElement -> m SVGPathSegClosePath
createSVGPathSegClosePath self
  = liftDOM
      ((self ^. jsf "createSVGPathSegClosePath" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegClosePath Mozilla SVGPathElement.createSVGPathSegClosePath documentation> 
createSVGPathSegClosePath_ ::
                           (MonadDOM m) => SVGPathElement -> m ()
createSVGPathSegClosePath_ self
  = liftDOM (void (self ^. jsf "createSVGPathSegClosePath" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoAbs Mozilla SVGPathElement.createSVGPathSegMovetoAbs documentation> 
createSVGPathSegMovetoAbs ::
                          (MonadDOM m) =>
                            SVGPathElement ->
                              Maybe Float -> Maybe Float -> m SVGPathSegMovetoAbs
createSVGPathSegMovetoAbs self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegMovetoAbs" [toJSVal x, toJSVal y])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoAbs Mozilla SVGPathElement.createSVGPathSegMovetoAbs documentation> 
createSVGPathSegMovetoAbs_ ::
                           (MonadDOM m) =>
                             SVGPathElement -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegMovetoAbs_ self x y
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegMovetoAbs" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoRel Mozilla SVGPathElement.createSVGPathSegMovetoRel documentation> 
createSVGPathSegMovetoRel ::
                          (MonadDOM m) =>
                            SVGPathElement ->
                              Maybe Float -> Maybe Float -> m SVGPathSegMovetoRel
createSVGPathSegMovetoRel self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegMovetoRel" [toJSVal x, toJSVal y])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoRel Mozilla SVGPathElement.createSVGPathSegMovetoRel documentation> 
createSVGPathSegMovetoRel_ ::
                           (MonadDOM m) =>
                             SVGPathElement -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegMovetoRel_ self x y
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegMovetoRel" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoAbs Mozilla SVGPathElement.createSVGPathSegLinetoAbs documentation> 
createSVGPathSegLinetoAbs ::
                          (MonadDOM m) =>
                            SVGPathElement ->
                              Maybe Float -> Maybe Float -> m SVGPathSegLinetoAbs
createSVGPathSegLinetoAbs self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoAbs" [toJSVal x, toJSVal y])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoAbs Mozilla SVGPathElement.createSVGPathSegLinetoAbs documentation> 
createSVGPathSegLinetoAbs_ ::
                           (MonadDOM m) =>
                             SVGPathElement -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegLinetoAbs_ self x y
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegLinetoAbs" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoRel Mozilla SVGPathElement.createSVGPathSegLinetoRel documentation> 
createSVGPathSegLinetoRel ::
                          (MonadDOM m) =>
                            SVGPathElement ->
                              Maybe Float -> Maybe Float -> m SVGPathSegLinetoRel
createSVGPathSegLinetoRel self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoRel" [toJSVal x, toJSVal y])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoRel Mozilla SVGPathElement.createSVGPathSegLinetoRel documentation> 
createSVGPathSegLinetoRel_ ::
                           (MonadDOM m) =>
                             SVGPathElement -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegLinetoRel_ self x y
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegLinetoRel" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicAbs documentation> 
createSVGPathSegCurvetoCubicAbs ::
                                (MonadDOM m) =>
                                  SVGPathElement ->
                                    Maybe Float ->
                                      Maybe Float ->
                                        Maybe Float ->
                                          Maybe Float ->
                                            Maybe Float ->
                                              Maybe Float -> m SVGPathSegCurvetoCubicAbs
createSVGPathSegCurvetoCubicAbs self x y x1 y1 x2 y2
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoCubicAbs"
          [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1, toJSVal x2,
           toJSVal y2])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicAbs documentation> 
createSVGPathSegCurvetoCubicAbs_ ::
                                 (MonadDOM m) =>
                                   SVGPathElement ->
                                     Maybe Float ->
                                       Maybe Float ->
                                         Maybe Float ->
                                           Maybe Float -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegCurvetoCubicAbs_ self x y x1 y1 x2 y2
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegCurvetoCubicAbs"
            [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1, toJSVal x2,
             toJSVal y2]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicRel documentation> 
createSVGPathSegCurvetoCubicRel ::
                                (MonadDOM m) =>
                                  SVGPathElement ->
                                    Maybe Float ->
                                      Maybe Float ->
                                        Maybe Float ->
                                          Maybe Float ->
                                            Maybe Float ->
                                              Maybe Float -> m SVGPathSegCurvetoCubicRel
createSVGPathSegCurvetoCubicRel self x y x1 y1 x2 y2
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoCubicRel"
          [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1, toJSVal x2,
           toJSVal y2])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicRel documentation> 
createSVGPathSegCurvetoCubicRel_ ::
                                 (MonadDOM m) =>
                                   SVGPathElement ->
                                     Maybe Float ->
                                       Maybe Float ->
                                         Maybe Float ->
                                           Maybe Float -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegCurvetoCubicRel_ self x y x1 y1 x2 y2
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegCurvetoCubicRel"
            [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1, toJSVal x2,
             toJSVal y2]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticAbs documentation> 
createSVGPathSegCurvetoQuadraticAbs ::
                                    (MonadDOM m) =>
                                      SVGPathElement ->
                                        Maybe Float ->
                                          Maybe Float ->
                                            Maybe Float ->
                                              Maybe Float -> m SVGPathSegCurvetoQuadraticAbs
createSVGPathSegCurvetoQuadraticAbs self x y x1 y1
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoQuadraticAbs"
          [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticAbs documentation> 
createSVGPathSegCurvetoQuadraticAbs_ ::
                                     (MonadDOM m) =>
                                       SVGPathElement ->
                                         Maybe Float ->
                                           Maybe Float -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegCurvetoQuadraticAbs_ self x y x1 y1
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegCurvetoQuadraticAbs"
            [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticRel documentation> 
createSVGPathSegCurvetoQuadraticRel ::
                                    (MonadDOM m) =>
                                      SVGPathElement ->
                                        Maybe Float ->
                                          Maybe Float ->
                                            Maybe Float ->
                                              Maybe Float -> m SVGPathSegCurvetoQuadraticRel
createSVGPathSegCurvetoQuadraticRel self x y x1 y1
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoQuadraticRel"
          [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticRel documentation> 
createSVGPathSegCurvetoQuadraticRel_ ::
                                     (MonadDOM m) =>
                                       SVGPathElement ->
                                         Maybe Float ->
                                           Maybe Float -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegCurvetoQuadraticRel_ self x y x1 y1
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegCurvetoQuadraticRel"
            [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcAbs Mozilla SVGPathElement.createSVGPathSegArcAbs documentation> 
createSVGPathSegArcAbs ::
                       (MonadDOM m) =>
                         SVGPathElement ->
                           Maybe Float ->
                             Maybe Float ->
                               Maybe Float ->
                                 Maybe Float -> Maybe Float -> Bool -> Bool -> m SVGPathSegArcAbs
createSVGPathSegArcAbs self x y r1 r2 angle largeArcFlag sweepFlag
  = liftDOM
      ((self ^. jsf "createSVGPathSegArcAbs"
          [toJSVal x, toJSVal y, toJSVal r1, toJSVal r2, toJSVal angle,
           toJSVal largeArcFlag, toJSVal sweepFlag])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcAbs Mozilla SVGPathElement.createSVGPathSegArcAbs documentation> 
createSVGPathSegArcAbs_ ::
                        (MonadDOM m) =>
                          SVGPathElement ->
                            Maybe Float ->
                              Maybe Float ->
                                Maybe Float -> Maybe Float -> Maybe Float -> Bool -> Bool -> m ()
createSVGPathSegArcAbs_ self x y r1 r2 angle largeArcFlag sweepFlag
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegArcAbs"
            [toJSVal x, toJSVal y, toJSVal r1, toJSVal r2, toJSVal angle,
             toJSVal largeArcFlag, toJSVal sweepFlag]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcRel Mozilla SVGPathElement.createSVGPathSegArcRel documentation> 
createSVGPathSegArcRel ::
                       (MonadDOM m) =>
                         SVGPathElement ->
                           Maybe Float ->
                             Maybe Float ->
                               Maybe Float ->
                                 Maybe Float -> Maybe Float -> Bool -> Bool -> m SVGPathSegArcRel
createSVGPathSegArcRel self x y r1 r2 angle largeArcFlag sweepFlag
  = liftDOM
      ((self ^. jsf "createSVGPathSegArcRel"
          [toJSVal x, toJSVal y, toJSVal r1, toJSVal r2, toJSVal angle,
           toJSVal largeArcFlag, toJSVal sweepFlag])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcRel Mozilla SVGPathElement.createSVGPathSegArcRel documentation> 
createSVGPathSegArcRel_ ::
                        (MonadDOM m) =>
                          SVGPathElement ->
                            Maybe Float ->
                              Maybe Float ->
                                Maybe Float -> Maybe Float -> Maybe Float -> Bool -> Bool -> m ()
createSVGPathSegArcRel_ self x y r1 r2 angle largeArcFlag sweepFlag
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegArcRel"
            [toJSVal x, toJSVal y, toJSVal r1, toJSVal r2, toJSVal angle,
             toJSVal largeArcFlag, toJSVal sweepFlag]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalAbs Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalAbs documentation> 
createSVGPathSegLinetoHorizontalAbs ::
                                    (MonadDOM m) =>
                                      SVGPathElement ->
                                        Maybe Float -> m SVGPathSegLinetoHorizontalAbs
createSVGPathSegLinetoHorizontalAbs self x
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoHorizontalAbs" [toJSVal x])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalAbs Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalAbs documentation> 
createSVGPathSegLinetoHorizontalAbs_ ::
                                     (MonadDOM m) => SVGPathElement -> Maybe Float -> m ()
createSVGPathSegLinetoHorizontalAbs_ self x
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegLinetoHorizontalAbs" [toJSVal x]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalRel Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalRel documentation> 
createSVGPathSegLinetoHorizontalRel ::
                                    (MonadDOM m) =>
                                      SVGPathElement ->
                                        Maybe Float -> m SVGPathSegLinetoHorizontalRel
createSVGPathSegLinetoHorizontalRel self x
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoHorizontalRel" [toJSVal x])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalRel Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalRel documentation> 
createSVGPathSegLinetoHorizontalRel_ ::
                                     (MonadDOM m) => SVGPathElement -> Maybe Float -> m ()
createSVGPathSegLinetoHorizontalRel_ self x
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegLinetoHorizontalRel" [toJSVal x]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalAbs Mozilla SVGPathElement.createSVGPathSegLinetoVerticalAbs documentation> 
createSVGPathSegLinetoVerticalAbs ::
                                  (MonadDOM m) =>
                                    SVGPathElement -> Maybe Float -> m SVGPathSegLinetoVerticalAbs
createSVGPathSegLinetoVerticalAbs self y
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoVerticalAbs" [toJSVal y]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalAbs Mozilla SVGPathElement.createSVGPathSegLinetoVerticalAbs documentation> 
createSVGPathSegLinetoVerticalAbs_ ::
                                   (MonadDOM m) => SVGPathElement -> Maybe Float -> m ()
createSVGPathSegLinetoVerticalAbs_ self y
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegLinetoVerticalAbs" [toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalRel Mozilla SVGPathElement.createSVGPathSegLinetoVerticalRel documentation> 
createSVGPathSegLinetoVerticalRel ::
                                  (MonadDOM m) =>
                                    SVGPathElement -> Maybe Float -> m SVGPathSegLinetoVerticalRel
createSVGPathSegLinetoVerticalRel self y
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoVerticalRel" [toJSVal y]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalRel Mozilla SVGPathElement.createSVGPathSegLinetoVerticalRel documentation> 
createSVGPathSegLinetoVerticalRel_ ::
                                   (MonadDOM m) => SVGPathElement -> Maybe Float -> m ()
createSVGPathSegLinetoVerticalRel_ self y
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegLinetoVerticalRel" [toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs documentation> 
createSVGPathSegCurvetoCubicSmoothAbs ::
                                      (MonadDOM m) =>
                                        SVGPathElement ->
                                          Maybe Float ->
                                            Maybe Float ->
                                              Maybe Float ->
                                                Maybe Float -> m SVGPathSegCurvetoCubicSmoothAbs
createSVGPathSegCurvetoCubicSmoothAbs self x y x2 y2
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoCubicSmoothAbs"
          [toJSVal x, toJSVal y, toJSVal x2, toJSVal y2])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs documentation> 
createSVGPathSegCurvetoCubicSmoothAbs_ ::
                                       (MonadDOM m) =>
                                         SVGPathElement ->
                                           Maybe Float ->
                                             Maybe Float -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegCurvetoCubicSmoothAbs_ self x y x2 y2
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegCurvetoCubicSmoothAbs"
            [toJSVal x, toJSVal y, toJSVal x2, toJSVal y2]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel documentation> 
createSVGPathSegCurvetoCubicSmoothRel ::
                                      (MonadDOM m) =>
                                        SVGPathElement ->
                                          Maybe Float ->
                                            Maybe Float ->
                                              Maybe Float ->
                                                Maybe Float -> m SVGPathSegCurvetoCubicSmoothRel
createSVGPathSegCurvetoCubicSmoothRel self x y x2 y2
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoCubicSmoothRel"
          [toJSVal x, toJSVal y, toJSVal x2, toJSVal y2])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel documentation> 
createSVGPathSegCurvetoCubicSmoothRel_ ::
                                       (MonadDOM m) =>
                                         SVGPathElement ->
                                           Maybe Float ->
                                             Maybe Float -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegCurvetoCubicSmoothRel_ self x y x2 y2
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegCurvetoCubicSmoothRel"
            [toJSVal x, toJSVal y, toJSVal x2, toJSVal y2]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs documentation> 
createSVGPathSegCurvetoQuadraticSmoothAbs ::
                                          (MonadDOM m) =>
                                            SVGPathElement ->
                                              Maybe Float ->
                                                Maybe Float -> m SVGPathSegCurvetoQuadraticSmoothAbs
createSVGPathSegCurvetoQuadraticSmoothAbs self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoQuadraticSmoothAbs"
          [toJSVal x, toJSVal y])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs documentation> 
createSVGPathSegCurvetoQuadraticSmoothAbs_ ::
                                           (MonadDOM m) =>
                                             SVGPathElement -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegCurvetoQuadraticSmoothAbs_ self x y
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegCurvetoQuadraticSmoothAbs"
            [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel documentation> 
createSVGPathSegCurvetoQuadraticSmoothRel ::
                                          (MonadDOM m) =>
                                            SVGPathElement ->
                                              Maybe Float ->
                                                Maybe Float -> m SVGPathSegCurvetoQuadraticSmoothRel
createSVGPathSegCurvetoQuadraticSmoothRel self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoQuadraticSmoothRel"
          [toJSVal x, toJSVal y])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel documentation> 
createSVGPathSegCurvetoQuadraticSmoothRel_ ::
                                           (MonadDOM m) =>
                                             SVGPathElement -> Maybe Float -> Maybe Float -> m ()
createSVGPathSegCurvetoQuadraticSmoothRel_ self x y
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegCurvetoQuadraticSmoothRel"
            [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathLength Mozilla SVGPathElement.pathLength documentation> 
getPathLength ::
              (MonadDOM m) => SVGPathElement -> m SVGAnimatedNumber
getPathLength self
  = liftDOM ((self ^. js "pathLength") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathSegList Mozilla SVGPathElement.pathSegList documentation> 
getPathSegList ::
               (MonadDOM m) => SVGPathElement -> m SVGPathSegList
getPathSegList self
  = liftDOM ((self ^. js "pathSegList") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.normalizedPathSegList Mozilla SVGPathElement.normalizedPathSegList documentation> 
getNormalizedPathSegList ::
                         (MonadDOM m) => SVGPathElement -> m SVGPathSegList
getNormalizedPathSegList self
  = liftDOM
      ((self ^. js "normalizedPathSegList") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedPathSegList Mozilla SVGPathElement.animatedPathSegList documentation> 
getAnimatedPathSegList ::
                       (MonadDOM m) => SVGPathElement -> m SVGPathSegList
getAnimatedPathSegList self
  = liftDOM
      ((self ^. js "animatedPathSegList") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedNormalizedPathSegList Mozilla SVGPathElement.animatedNormalizedPathSegList documentation> 
getAnimatedNormalizedPathSegList ::
                                 (MonadDOM m) => SVGPathElement -> m SVGPathSegList
getAnimatedNormalizedPathSegList self
  = liftDOM
      ((self ^. js "animatedNormalizedPathSegList") >>=
         fromJSValUnchecked)
