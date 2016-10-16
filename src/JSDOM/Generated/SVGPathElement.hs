{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPathElement
       (getTotalLength, getTotalLength_, getPointAtLength,
        getPointAtLength_, getPointAtLengthUnsafe,
        getPointAtLengthUnchecked, getPathSegAtLength, getPathSegAtLength_,
        createSVGPathSegClosePath, createSVGPathSegClosePath_,
        createSVGPathSegClosePathUnsafe,
        createSVGPathSegClosePathUnchecked, createSVGPathSegMovetoAbs,
        createSVGPathSegMovetoAbs_, createSVGPathSegMovetoAbsUnsafe,
        createSVGPathSegMovetoAbsUnchecked, createSVGPathSegMovetoRel,
        createSVGPathSegMovetoRel_, createSVGPathSegMovetoRelUnsafe,
        createSVGPathSegMovetoRelUnchecked, createSVGPathSegLinetoAbs,
        createSVGPathSegLinetoAbs_, createSVGPathSegLinetoAbsUnsafe,
        createSVGPathSegLinetoAbsUnchecked, createSVGPathSegLinetoRel,
        createSVGPathSegLinetoRel_, createSVGPathSegLinetoRelUnsafe,
        createSVGPathSegLinetoRelUnchecked,
        createSVGPathSegCurvetoCubicAbs, createSVGPathSegCurvetoCubicAbs_,
        createSVGPathSegCurvetoCubicAbsUnsafe,
        createSVGPathSegCurvetoCubicAbsUnchecked,
        createSVGPathSegCurvetoCubicRel, createSVGPathSegCurvetoCubicRel_,
        createSVGPathSegCurvetoCubicRelUnsafe,
        createSVGPathSegCurvetoCubicRelUnchecked,
        createSVGPathSegCurvetoQuadraticAbs,
        createSVGPathSegCurvetoQuadraticAbs_,
        createSVGPathSegCurvetoQuadraticAbsUnsafe,
        createSVGPathSegCurvetoQuadraticAbsUnchecked,
        createSVGPathSegCurvetoQuadraticRel,
        createSVGPathSegCurvetoQuadraticRel_,
        createSVGPathSegCurvetoQuadraticRelUnsafe,
        createSVGPathSegCurvetoQuadraticRelUnchecked,
        createSVGPathSegArcAbs, createSVGPathSegArcAbs_,
        createSVGPathSegArcAbsUnsafe, createSVGPathSegArcAbsUnchecked,
        createSVGPathSegArcRel, createSVGPathSegArcRel_,
        createSVGPathSegArcRelUnsafe, createSVGPathSegArcRelUnchecked,
        createSVGPathSegLinetoHorizontalAbs,
        createSVGPathSegLinetoHorizontalAbs_,
        createSVGPathSegLinetoHorizontalAbsUnsafe,
        createSVGPathSegLinetoHorizontalAbsUnchecked,
        createSVGPathSegLinetoHorizontalRel,
        createSVGPathSegLinetoHorizontalRel_,
        createSVGPathSegLinetoHorizontalRelUnsafe,
        createSVGPathSegLinetoHorizontalRelUnchecked,
        createSVGPathSegLinetoVerticalAbs,
        createSVGPathSegLinetoVerticalAbs_,
        createSVGPathSegLinetoVerticalAbsUnsafe,
        createSVGPathSegLinetoVerticalAbsUnchecked,
        createSVGPathSegLinetoVerticalRel,
        createSVGPathSegLinetoVerticalRel_,
        createSVGPathSegLinetoVerticalRelUnsafe,
        createSVGPathSegLinetoVerticalRelUnchecked,
        createSVGPathSegCurvetoCubicSmoothAbs,
        createSVGPathSegCurvetoCubicSmoothAbs_,
        createSVGPathSegCurvetoCubicSmoothAbsUnsafe,
        createSVGPathSegCurvetoCubicSmoothAbsUnchecked,
        createSVGPathSegCurvetoCubicSmoothRel,
        createSVGPathSegCurvetoCubicSmoothRel_,
        createSVGPathSegCurvetoCubicSmoothRelUnsafe,
        createSVGPathSegCurvetoCubicSmoothRelUnchecked,
        createSVGPathSegCurvetoQuadraticSmoothAbs,
        createSVGPathSegCurvetoQuadraticSmoothAbs_,
        createSVGPathSegCurvetoQuadraticSmoothAbsUnsafe,
        createSVGPathSegCurvetoQuadraticSmoothAbsUnchecked,
        createSVGPathSegCurvetoQuadraticSmoothRel,
        createSVGPathSegCurvetoQuadraticSmoothRel_,
        createSVGPathSegCurvetoQuadraticSmoothRelUnsafe,
        createSVGPathSegCurvetoQuadraticSmoothRelUnchecked, getPathLength,
        getPathLengthUnchecked, getPathSegList, getPathSegListUnchecked,
        getNormalizedPathSegList, getNormalizedPathSegListUnchecked,
        getAnimatedPathSegList, getAnimatedPathSegListUnchecked,
        getAnimatedNormalizedPathSegList,
        getAnimatedNormalizedPathSegListUnchecked, SVGPathElement(..),
        gTypeSVGPathElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

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
                 (MonadDOM m) => SVGPathElement -> Float -> m (Maybe SVGPoint)
getPointAtLength self distance
  = liftDOM
      ((self ^. jsf "getPointAtLength" [toJSVal distance]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPointAtLength Mozilla SVGPathElement.getPointAtLength documentation> 
getPointAtLength_ ::
                  (MonadDOM m) => SVGPathElement -> Float -> m ()
getPointAtLength_ self distance
  = liftDOM
      (void (self ^. jsf "getPointAtLength" [toJSVal distance]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPointAtLength Mozilla SVGPathElement.getPointAtLength documentation> 
getPointAtLengthUnsafe ::
                       (MonadDOM m, HasCallStack) => SVGPathElement -> Float -> m SVGPoint
getPointAtLengthUnsafe self distance
  = liftDOM
      (((self ^. jsf "getPointAtLength" [toJSVal distance]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPointAtLength Mozilla SVGPathElement.getPointAtLength documentation> 
getPointAtLengthUnchecked ::
                          (MonadDOM m) => SVGPathElement -> Float -> m SVGPoint
getPointAtLengthUnchecked self distance
  = liftDOM
      ((self ^. jsf "getPointAtLength" [toJSVal distance]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPathSegAtLength Mozilla SVGPathElement.getPathSegAtLength documentation> 
getPathSegAtLength ::
                   (MonadDOM m) => SVGPathElement -> Float -> m Word
getPathSegAtLength self distance
  = liftDOM
      (round <$>
         ((self ^. jsf "getPathSegAtLength" [toJSVal distance]) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.getPathSegAtLength Mozilla SVGPathElement.getPathSegAtLength documentation> 
getPathSegAtLength_ ::
                    (MonadDOM m) => SVGPathElement -> Float -> m ()
getPathSegAtLength_ self distance
  = liftDOM
      (void (self ^. jsf "getPathSegAtLength" [toJSVal distance]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegClosePath Mozilla SVGPathElement.createSVGPathSegClosePath documentation> 
createSVGPathSegClosePath ::
                          (MonadDOM m) => SVGPathElement -> m (Maybe SVGPathSegClosePath)
createSVGPathSegClosePath self
  = liftDOM
      ((self ^. jsf "createSVGPathSegClosePath" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegClosePath Mozilla SVGPathElement.createSVGPathSegClosePath documentation> 
createSVGPathSegClosePath_ ::
                           (MonadDOM m) => SVGPathElement -> m ()
createSVGPathSegClosePath_ self
  = liftDOM (void (self ^. jsf "createSVGPathSegClosePath" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegClosePath Mozilla SVGPathElement.createSVGPathSegClosePath documentation> 
createSVGPathSegClosePathUnsafe ::
                                (MonadDOM m, HasCallStack) =>
                                  SVGPathElement -> m SVGPathSegClosePath
createSVGPathSegClosePathUnsafe self
  = liftDOM
      (((self ^. jsf "createSVGPathSegClosePath" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegClosePath Mozilla SVGPathElement.createSVGPathSegClosePath documentation> 
createSVGPathSegClosePathUnchecked ::
                                   (MonadDOM m) => SVGPathElement -> m SVGPathSegClosePath
createSVGPathSegClosePathUnchecked self
  = liftDOM
      ((self ^. jsf "createSVGPathSegClosePath" ()) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoAbs Mozilla SVGPathElement.createSVGPathSegMovetoAbs documentation> 
createSVGPathSegMovetoAbs ::
                          (MonadDOM m) =>
                            SVGPathElement -> Float -> Float -> m (Maybe SVGPathSegMovetoAbs)
createSVGPathSegMovetoAbs self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegMovetoAbs" [toJSVal x, toJSVal y])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoAbs Mozilla SVGPathElement.createSVGPathSegMovetoAbs documentation> 
createSVGPathSegMovetoAbs_ ::
                           (MonadDOM m) => SVGPathElement -> Float -> Float -> m ()
createSVGPathSegMovetoAbs_ self x y
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegMovetoAbs" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoAbs Mozilla SVGPathElement.createSVGPathSegMovetoAbs documentation> 
createSVGPathSegMovetoAbsUnsafe ::
                                (MonadDOM m, HasCallStack) =>
                                  SVGPathElement -> Float -> Float -> m SVGPathSegMovetoAbs
createSVGPathSegMovetoAbsUnsafe self x y
  = liftDOM
      (((self ^. jsf "createSVGPathSegMovetoAbs" [toJSVal x, toJSVal y])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoAbs Mozilla SVGPathElement.createSVGPathSegMovetoAbs documentation> 
createSVGPathSegMovetoAbsUnchecked ::
                                   (MonadDOM m) =>
                                     SVGPathElement -> Float -> Float -> m SVGPathSegMovetoAbs
createSVGPathSegMovetoAbsUnchecked self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegMovetoAbs" [toJSVal x, toJSVal y])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoRel Mozilla SVGPathElement.createSVGPathSegMovetoRel documentation> 
createSVGPathSegMovetoRel ::
                          (MonadDOM m) =>
                            SVGPathElement -> Float -> Float -> m (Maybe SVGPathSegMovetoRel)
createSVGPathSegMovetoRel self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegMovetoRel" [toJSVal x, toJSVal y])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoRel Mozilla SVGPathElement.createSVGPathSegMovetoRel documentation> 
createSVGPathSegMovetoRel_ ::
                           (MonadDOM m) => SVGPathElement -> Float -> Float -> m ()
createSVGPathSegMovetoRel_ self x y
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegMovetoRel" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoRel Mozilla SVGPathElement.createSVGPathSegMovetoRel documentation> 
createSVGPathSegMovetoRelUnsafe ::
                                (MonadDOM m, HasCallStack) =>
                                  SVGPathElement -> Float -> Float -> m SVGPathSegMovetoRel
createSVGPathSegMovetoRelUnsafe self x y
  = liftDOM
      (((self ^. jsf "createSVGPathSegMovetoRel" [toJSVal x, toJSVal y])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegMovetoRel Mozilla SVGPathElement.createSVGPathSegMovetoRel documentation> 
createSVGPathSegMovetoRelUnchecked ::
                                   (MonadDOM m) =>
                                     SVGPathElement -> Float -> Float -> m SVGPathSegMovetoRel
createSVGPathSegMovetoRelUnchecked self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegMovetoRel" [toJSVal x, toJSVal y])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoAbs Mozilla SVGPathElement.createSVGPathSegLinetoAbs documentation> 
createSVGPathSegLinetoAbs ::
                          (MonadDOM m) =>
                            SVGPathElement -> Float -> Float -> m (Maybe SVGPathSegLinetoAbs)
createSVGPathSegLinetoAbs self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoAbs" [toJSVal x, toJSVal y])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoAbs Mozilla SVGPathElement.createSVGPathSegLinetoAbs documentation> 
createSVGPathSegLinetoAbs_ ::
                           (MonadDOM m) => SVGPathElement -> Float -> Float -> m ()
createSVGPathSegLinetoAbs_ self x y
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegLinetoAbs" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoAbs Mozilla SVGPathElement.createSVGPathSegLinetoAbs documentation> 
createSVGPathSegLinetoAbsUnsafe ::
                                (MonadDOM m, HasCallStack) =>
                                  SVGPathElement -> Float -> Float -> m SVGPathSegLinetoAbs
createSVGPathSegLinetoAbsUnsafe self x y
  = liftDOM
      (((self ^. jsf "createSVGPathSegLinetoAbs" [toJSVal x, toJSVal y])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoAbs Mozilla SVGPathElement.createSVGPathSegLinetoAbs documentation> 
createSVGPathSegLinetoAbsUnchecked ::
                                   (MonadDOM m) =>
                                     SVGPathElement -> Float -> Float -> m SVGPathSegLinetoAbs
createSVGPathSegLinetoAbsUnchecked self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoAbs" [toJSVal x, toJSVal y])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoRel Mozilla SVGPathElement.createSVGPathSegLinetoRel documentation> 
createSVGPathSegLinetoRel ::
                          (MonadDOM m) =>
                            SVGPathElement -> Float -> Float -> m (Maybe SVGPathSegLinetoRel)
createSVGPathSegLinetoRel self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoRel" [toJSVal x, toJSVal y])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoRel Mozilla SVGPathElement.createSVGPathSegLinetoRel documentation> 
createSVGPathSegLinetoRel_ ::
                           (MonadDOM m) => SVGPathElement -> Float -> Float -> m ()
createSVGPathSegLinetoRel_ self x y
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegLinetoRel" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoRel Mozilla SVGPathElement.createSVGPathSegLinetoRel documentation> 
createSVGPathSegLinetoRelUnsafe ::
                                (MonadDOM m, HasCallStack) =>
                                  SVGPathElement -> Float -> Float -> m SVGPathSegLinetoRel
createSVGPathSegLinetoRelUnsafe self x y
  = liftDOM
      (((self ^. jsf "createSVGPathSegLinetoRel" [toJSVal x, toJSVal y])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoRel Mozilla SVGPathElement.createSVGPathSegLinetoRel documentation> 
createSVGPathSegLinetoRelUnchecked ::
                                   (MonadDOM m) =>
                                     SVGPathElement -> Float -> Float -> m SVGPathSegLinetoRel
createSVGPathSegLinetoRelUnchecked self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoRel" [toJSVal x, toJSVal y])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicAbs documentation> 
createSVGPathSegCurvetoCubicAbs_ ::
                                 (MonadDOM m) =>
                                   SVGPathElement ->
                                     Float -> Float -> Float -> Float -> Float -> Float -> m ()
createSVGPathSegCurvetoCubicAbs_ self x y x1 y1 x2 y2
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegCurvetoCubicAbs"
            [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1, toJSVal x2,
             toJSVal y2]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicAbs documentation> 
createSVGPathSegCurvetoCubicAbsUnsafe ::
                                      (MonadDOM m, HasCallStack) =>
                                        SVGPathElement ->
                                          Float ->
                                            Float ->
                                              Float ->
                                                Float ->
                                                  Float -> Float -> m SVGPathSegCurvetoCubicAbs
createSVGPathSegCurvetoCubicAbsUnsafe self x y x1 y1 x2 y2
  = liftDOM
      (((self ^. jsf "createSVGPathSegCurvetoCubicAbs"
           [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1, toJSVal x2,
            toJSVal y2])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicAbs documentation> 
createSVGPathSegCurvetoCubicAbsUnchecked ::
                                         (MonadDOM m) =>
                                           SVGPathElement ->
                                             Float ->
                                               Float ->
                                                 Float ->
                                                   Float ->
                                                     Float -> Float -> m SVGPathSegCurvetoCubicAbs
createSVGPathSegCurvetoCubicAbsUnchecked self x y x1 y1 x2 y2
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoCubicAbs"
          [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1, toJSVal x2,
           toJSVal y2])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicRel documentation> 
createSVGPathSegCurvetoCubicRel_ ::
                                 (MonadDOM m) =>
                                   SVGPathElement ->
                                     Float -> Float -> Float -> Float -> Float -> Float -> m ()
createSVGPathSegCurvetoCubicRel_ self x y x1 y1 x2 y2
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegCurvetoCubicRel"
            [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1, toJSVal x2,
             toJSVal y2]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicRel documentation> 
createSVGPathSegCurvetoCubicRelUnsafe ::
                                      (MonadDOM m, HasCallStack) =>
                                        SVGPathElement ->
                                          Float ->
                                            Float ->
                                              Float ->
                                                Float ->
                                                  Float -> Float -> m SVGPathSegCurvetoCubicRel
createSVGPathSegCurvetoCubicRelUnsafe self x y x1 y1 x2 y2
  = liftDOM
      (((self ^. jsf "createSVGPathSegCurvetoCubicRel"
           [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1, toJSVal x2,
            toJSVal y2])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicRel documentation> 
createSVGPathSegCurvetoCubicRelUnchecked ::
                                         (MonadDOM m) =>
                                           SVGPathElement ->
                                             Float ->
                                               Float ->
                                                 Float ->
                                                   Float ->
                                                     Float -> Float -> m SVGPathSegCurvetoCubicRel
createSVGPathSegCurvetoCubicRelUnchecked self x y x1 y1 x2 y2
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoCubicRel"
          [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1, toJSVal x2,
           toJSVal y2])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticAbs documentation> 
createSVGPathSegCurvetoQuadraticAbs_ ::
                                     (MonadDOM m) =>
                                       SVGPathElement -> Float -> Float -> Float -> Float -> m ()
createSVGPathSegCurvetoQuadraticAbs_ self x y x1 y1
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegCurvetoQuadraticAbs"
            [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticAbs documentation> 
createSVGPathSegCurvetoQuadraticAbsUnsafe ::
                                          (MonadDOM m, HasCallStack) =>
                                            SVGPathElement ->
                                              Float ->
                                                Float ->
                                                  Float -> Float -> m SVGPathSegCurvetoQuadraticAbs
createSVGPathSegCurvetoQuadraticAbsUnsafe self x y x1 y1
  = liftDOM
      (((self ^. jsf "createSVGPathSegCurvetoQuadraticAbs"
           [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticAbs documentation> 
createSVGPathSegCurvetoQuadraticAbsUnchecked ::
                                             (MonadDOM m) =>
                                               SVGPathElement ->
                                                 Float ->
                                                   Float ->
                                                     Float ->
                                                       Float -> m SVGPathSegCurvetoQuadraticAbs
createSVGPathSegCurvetoQuadraticAbsUnchecked self x y x1 y1
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoQuadraticAbs"
          [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticRel documentation> 
createSVGPathSegCurvetoQuadraticRel_ ::
                                     (MonadDOM m) =>
                                       SVGPathElement -> Float -> Float -> Float -> Float -> m ()
createSVGPathSegCurvetoQuadraticRel_ self x y x1 y1
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegCurvetoQuadraticRel"
            [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticRel documentation> 
createSVGPathSegCurvetoQuadraticRelUnsafe ::
                                          (MonadDOM m, HasCallStack) =>
                                            SVGPathElement ->
                                              Float ->
                                                Float ->
                                                  Float -> Float -> m SVGPathSegCurvetoQuadraticRel
createSVGPathSegCurvetoQuadraticRelUnsafe self x y x1 y1
  = liftDOM
      (((self ^. jsf "createSVGPathSegCurvetoQuadraticRel"
           [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticRel documentation> 
createSVGPathSegCurvetoQuadraticRelUnchecked ::
                                             (MonadDOM m) =>
                                               SVGPathElement ->
                                                 Float ->
                                                   Float ->
                                                     Float ->
                                                       Float -> m SVGPathSegCurvetoQuadraticRel
createSVGPathSegCurvetoQuadraticRelUnchecked self x y x1 y1
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoQuadraticRel"
          [toJSVal x, toJSVal y, toJSVal x1, toJSVal y1])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcAbs Mozilla SVGPathElement.createSVGPathSegArcAbs documentation> 
createSVGPathSegArcAbs_ ::
                        (MonadDOM m) =>
                          SVGPathElement ->
                            Float -> Float -> Float -> Float -> Float -> Bool -> Bool -> m ()
createSVGPathSegArcAbs_ self x y r1 r2 angle largeArcFlag sweepFlag
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegArcAbs"
            [toJSVal x, toJSVal y, toJSVal r1, toJSVal r2, toJSVal angle,
             toJSVal largeArcFlag, toJSVal sweepFlag]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcAbs Mozilla SVGPathElement.createSVGPathSegArcAbs documentation> 
createSVGPathSegArcAbsUnsafe ::
                             (MonadDOM m, HasCallStack) =>
                               SVGPathElement ->
                                 Float ->
                                   Float ->
                                     Float -> Float -> Float -> Bool -> Bool -> m SVGPathSegArcAbs
createSVGPathSegArcAbsUnsafe self x y r1 r2 angle largeArcFlag
  sweepFlag
  = liftDOM
      (((self ^. jsf "createSVGPathSegArcAbs"
           [toJSVal x, toJSVal y, toJSVal r1, toJSVal r2, toJSVal angle,
            toJSVal largeArcFlag, toJSVal sweepFlag])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcAbs Mozilla SVGPathElement.createSVGPathSegArcAbs documentation> 
createSVGPathSegArcAbsUnchecked ::
                                (MonadDOM m) =>
                                  SVGPathElement ->
                                    Float ->
                                      Float ->
                                        Float ->
                                          Float -> Float -> Bool -> Bool -> m SVGPathSegArcAbs
createSVGPathSegArcAbsUnchecked self x y r1 r2 angle largeArcFlag
  sweepFlag
  = liftDOM
      ((self ^. jsf "createSVGPathSegArcAbs"
          [toJSVal x, toJSVal y, toJSVal r1, toJSVal r2, toJSVal angle,
           toJSVal largeArcFlag, toJSVal sweepFlag])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcRel Mozilla SVGPathElement.createSVGPathSegArcRel documentation> 
createSVGPathSegArcRel_ ::
                        (MonadDOM m) =>
                          SVGPathElement ->
                            Float -> Float -> Float -> Float -> Float -> Bool -> Bool -> m ()
createSVGPathSegArcRel_ self x y r1 r2 angle largeArcFlag sweepFlag
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegArcRel"
            [toJSVal x, toJSVal y, toJSVal r1, toJSVal r2, toJSVal angle,
             toJSVal largeArcFlag, toJSVal sweepFlag]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcRel Mozilla SVGPathElement.createSVGPathSegArcRel documentation> 
createSVGPathSegArcRelUnsafe ::
                             (MonadDOM m, HasCallStack) =>
                               SVGPathElement ->
                                 Float ->
                                   Float ->
                                     Float -> Float -> Float -> Bool -> Bool -> m SVGPathSegArcRel
createSVGPathSegArcRelUnsafe self x y r1 r2 angle largeArcFlag
  sweepFlag
  = liftDOM
      (((self ^. jsf "createSVGPathSegArcRel"
           [toJSVal x, toJSVal y, toJSVal r1, toJSVal r2, toJSVal angle,
            toJSVal largeArcFlag, toJSVal sweepFlag])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegArcRel Mozilla SVGPathElement.createSVGPathSegArcRel documentation> 
createSVGPathSegArcRelUnchecked ::
                                (MonadDOM m) =>
                                  SVGPathElement ->
                                    Float ->
                                      Float ->
                                        Float ->
                                          Float -> Float -> Bool -> Bool -> m SVGPathSegArcRel
createSVGPathSegArcRelUnchecked self x y r1 r2 angle largeArcFlag
  sweepFlag
  = liftDOM
      ((self ^. jsf "createSVGPathSegArcRel"
          [toJSVal x, toJSVal y, toJSVal r1, toJSVal r2, toJSVal angle,
           toJSVal largeArcFlag, toJSVal sweepFlag])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalAbs Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalAbs documentation> 
createSVGPathSegLinetoHorizontalAbs ::
                                    (MonadDOM m) =>
                                      SVGPathElement ->
                                        Float -> m (Maybe SVGPathSegLinetoHorizontalAbs)
createSVGPathSegLinetoHorizontalAbs self x
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoHorizontalAbs" [toJSVal x])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalAbs Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalAbs documentation> 
createSVGPathSegLinetoHorizontalAbs_ ::
                                     (MonadDOM m) => SVGPathElement -> Float -> m ()
createSVGPathSegLinetoHorizontalAbs_ self x
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegLinetoHorizontalAbs" [toJSVal x]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalAbs Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalAbs documentation> 
createSVGPathSegLinetoHorizontalAbsUnsafe ::
                                          (MonadDOM m, HasCallStack) =>
                                            SVGPathElement ->
                                              Float -> m SVGPathSegLinetoHorizontalAbs
createSVGPathSegLinetoHorizontalAbsUnsafe self x
  = liftDOM
      (((self ^. jsf "createSVGPathSegLinetoHorizontalAbs" [toJSVal x])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalAbs Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalAbs documentation> 
createSVGPathSegLinetoHorizontalAbsUnchecked ::
                                             (MonadDOM m) =>
                                               SVGPathElement ->
                                                 Float -> m SVGPathSegLinetoHorizontalAbs
createSVGPathSegLinetoHorizontalAbsUnchecked self x
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoHorizontalAbs" [toJSVal x])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalRel Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalRel documentation> 
createSVGPathSegLinetoHorizontalRel ::
                                    (MonadDOM m) =>
                                      SVGPathElement ->
                                        Float -> m (Maybe SVGPathSegLinetoHorizontalRel)
createSVGPathSegLinetoHorizontalRel self x
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoHorizontalRel" [toJSVal x])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalRel Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalRel documentation> 
createSVGPathSegLinetoHorizontalRel_ ::
                                     (MonadDOM m) => SVGPathElement -> Float -> m ()
createSVGPathSegLinetoHorizontalRel_ self x
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegLinetoHorizontalRel" [toJSVal x]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalRel Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalRel documentation> 
createSVGPathSegLinetoHorizontalRelUnsafe ::
                                          (MonadDOM m, HasCallStack) =>
                                            SVGPathElement ->
                                              Float -> m SVGPathSegLinetoHorizontalRel
createSVGPathSegLinetoHorizontalRelUnsafe self x
  = liftDOM
      (((self ^. jsf "createSVGPathSegLinetoHorizontalRel" [toJSVal x])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoHorizontalRel Mozilla SVGPathElement.createSVGPathSegLinetoHorizontalRel documentation> 
createSVGPathSegLinetoHorizontalRelUnchecked ::
                                             (MonadDOM m) =>
                                               SVGPathElement ->
                                                 Float -> m SVGPathSegLinetoHorizontalRel
createSVGPathSegLinetoHorizontalRelUnchecked self x
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoHorizontalRel" [toJSVal x])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalAbs Mozilla SVGPathElement.createSVGPathSegLinetoVerticalAbs documentation> 
createSVGPathSegLinetoVerticalAbs ::
                                  (MonadDOM m) =>
                                    SVGPathElement -> Float -> m (Maybe SVGPathSegLinetoVerticalAbs)
createSVGPathSegLinetoVerticalAbs self y
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoVerticalAbs" [toJSVal y]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalAbs Mozilla SVGPathElement.createSVGPathSegLinetoVerticalAbs documentation> 
createSVGPathSegLinetoVerticalAbs_ ::
                                   (MonadDOM m) => SVGPathElement -> Float -> m ()
createSVGPathSegLinetoVerticalAbs_ self y
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegLinetoVerticalAbs" [toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalAbs Mozilla SVGPathElement.createSVGPathSegLinetoVerticalAbs documentation> 
createSVGPathSegLinetoVerticalAbsUnsafe ::
                                        (MonadDOM m, HasCallStack) =>
                                          SVGPathElement -> Float -> m SVGPathSegLinetoVerticalAbs
createSVGPathSegLinetoVerticalAbsUnsafe self y
  = liftDOM
      (((self ^. jsf "createSVGPathSegLinetoVerticalAbs" [toJSVal y]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalAbs Mozilla SVGPathElement.createSVGPathSegLinetoVerticalAbs documentation> 
createSVGPathSegLinetoVerticalAbsUnchecked ::
                                           (MonadDOM m) =>
                                             SVGPathElement ->
                                               Float -> m SVGPathSegLinetoVerticalAbs
createSVGPathSegLinetoVerticalAbsUnchecked self y
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoVerticalAbs" [toJSVal y]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalRel Mozilla SVGPathElement.createSVGPathSegLinetoVerticalRel documentation> 
createSVGPathSegLinetoVerticalRel ::
                                  (MonadDOM m) =>
                                    SVGPathElement -> Float -> m (Maybe SVGPathSegLinetoVerticalRel)
createSVGPathSegLinetoVerticalRel self y
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoVerticalRel" [toJSVal y]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalRel Mozilla SVGPathElement.createSVGPathSegLinetoVerticalRel documentation> 
createSVGPathSegLinetoVerticalRel_ ::
                                   (MonadDOM m) => SVGPathElement -> Float -> m ()
createSVGPathSegLinetoVerticalRel_ self y
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegLinetoVerticalRel" [toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalRel Mozilla SVGPathElement.createSVGPathSegLinetoVerticalRel documentation> 
createSVGPathSegLinetoVerticalRelUnsafe ::
                                        (MonadDOM m, HasCallStack) =>
                                          SVGPathElement -> Float -> m SVGPathSegLinetoVerticalRel
createSVGPathSegLinetoVerticalRelUnsafe self y
  = liftDOM
      (((self ^. jsf "createSVGPathSegLinetoVerticalRel" [toJSVal y]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegLinetoVerticalRel Mozilla SVGPathElement.createSVGPathSegLinetoVerticalRel documentation> 
createSVGPathSegLinetoVerticalRelUnchecked ::
                                           (MonadDOM m) =>
                                             SVGPathElement ->
                                               Float -> m SVGPathSegLinetoVerticalRel
createSVGPathSegLinetoVerticalRelUnchecked self y
  = liftDOM
      ((self ^. jsf "createSVGPathSegLinetoVerticalRel" [toJSVal y]) >>=
         fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs documentation> 
createSVGPathSegCurvetoCubicSmoothAbs_ ::
                                       (MonadDOM m) =>
                                         SVGPathElement -> Float -> Float -> Float -> Float -> m ()
createSVGPathSegCurvetoCubicSmoothAbs_ self x y x2 y2
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegCurvetoCubicSmoothAbs"
            [toJSVal x, toJSVal y, toJSVal x2, toJSVal y2]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs documentation> 
createSVGPathSegCurvetoCubicSmoothAbsUnsafe ::
                                            (MonadDOM m, HasCallStack) =>
                                              SVGPathElement ->
                                                Float ->
                                                  Float ->
                                                    Float ->
                                                      Float -> m SVGPathSegCurvetoCubicSmoothAbs
createSVGPathSegCurvetoCubicSmoothAbsUnsafe self x y x2 y2
  = liftDOM
      (((self ^. jsf "createSVGPathSegCurvetoCubicSmoothAbs"
           [toJSVal x, toJSVal y, toJSVal x2, toJSVal y2])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothAbs documentation> 
createSVGPathSegCurvetoCubicSmoothAbsUnchecked ::
                                               (MonadDOM m) =>
                                                 SVGPathElement ->
                                                   Float ->
                                                     Float ->
                                                       Float ->
                                                         Float -> m SVGPathSegCurvetoCubicSmoothAbs
createSVGPathSegCurvetoCubicSmoothAbsUnchecked self x y x2 y2
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoCubicSmoothAbs"
          [toJSVal x, toJSVal y, toJSVal x2, toJSVal y2])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel documentation> 
createSVGPathSegCurvetoCubicSmoothRel_ ::
                                       (MonadDOM m) =>
                                         SVGPathElement -> Float -> Float -> Float -> Float -> m ()
createSVGPathSegCurvetoCubicSmoothRel_ self x y x2 y2
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegCurvetoCubicSmoothRel"
            [toJSVal x, toJSVal y, toJSVal x2, toJSVal y2]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel documentation> 
createSVGPathSegCurvetoCubicSmoothRelUnsafe ::
                                            (MonadDOM m, HasCallStack) =>
                                              SVGPathElement ->
                                                Float ->
                                                  Float ->
                                                    Float ->
                                                      Float -> m SVGPathSegCurvetoCubicSmoothRel
createSVGPathSegCurvetoCubicSmoothRelUnsafe self x y x2 y2
  = liftDOM
      (((self ^. jsf "createSVGPathSegCurvetoCubicSmoothRel"
           [toJSVal x, toJSVal y, toJSVal x2, toJSVal y2])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoCubicSmoothRel documentation> 
createSVGPathSegCurvetoCubicSmoothRelUnchecked ::
                                               (MonadDOM m) =>
                                                 SVGPathElement ->
                                                   Float ->
                                                     Float ->
                                                       Float ->
                                                         Float -> m SVGPathSegCurvetoCubicSmoothRel
createSVGPathSegCurvetoCubicSmoothRelUnchecked self x y x2 y2
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoCubicSmoothRel"
          [toJSVal x, toJSVal y, toJSVal x2, toJSVal y2])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs documentation> 
createSVGPathSegCurvetoQuadraticSmoothAbs_ ::
                                           (MonadDOM m) => SVGPathElement -> Float -> Float -> m ()
createSVGPathSegCurvetoQuadraticSmoothAbs_ self x y
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegCurvetoQuadraticSmoothAbs"
            [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs documentation> 
createSVGPathSegCurvetoQuadraticSmoothAbsUnsafe ::
                                                (MonadDOM m, HasCallStack) =>
                                                  SVGPathElement ->
                                                    Float ->
                                                      Float -> m SVGPathSegCurvetoQuadraticSmoothAbs
createSVGPathSegCurvetoQuadraticSmoothAbsUnsafe self x y
  = liftDOM
      (((self ^. jsf "createSVGPathSegCurvetoQuadraticSmoothAbs"
           [toJSVal x, toJSVal y])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothAbs documentation> 
createSVGPathSegCurvetoQuadraticSmoothAbsUnchecked ::
                                                   (MonadDOM m) =>
                                                     SVGPathElement ->
                                                       Float ->
                                                         Float ->
                                                           m SVGPathSegCurvetoQuadraticSmoothAbs
createSVGPathSegCurvetoQuadraticSmoothAbsUnchecked self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoQuadraticSmoothAbs"
          [toJSVal x, toJSVal y])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel documentation> 
createSVGPathSegCurvetoQuadraticSmoothRel_ ::
                                           (MonadDOM m) => SVGPathElement -> Float -> Float -> m ()
createSVGPathSegCurvetoQuadraticSmoothRel_ self x y
  = liftDOM
      (void
         (self ^. jsf "createSVGPathSegCurvetoQuadraticSmoothRel"
            [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel documentation> 
createSVGPathSegCurvetoQuadraticSmoothRelUnsafe ::
                                                (MonadDOM m, HasCallStack) =>
                                                  SVGPathElement ->
                                                    Float ->
                                                      Float -> m SVGPathSegCurvetoQuadraticSmoothRel
createSVGPathSegCurvetoQuadraticSmoothRelUnsafe self x y
  = liftDOM
      (((self ^. jsf "createSVGPathSegCurvetoQuadraticSmoothRel"
           [toJSVal x, toJSVal y])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel Mozilla SVGPathElement.createSVGPathSegCurvetoQuadraticSmoothRel documentation> 
createSVGPathSegCurvetoQuadraticSmoothRelUnchecked ::
                                                   (MonadDOM m) =>
                                                     SVGPathElement ->
                                                       Float ->
                                                         Float ->
                                                           m SVGPathSegCurvetoQuadraticSmoothRel
createSVGPathSegCurvetoQuadraticSmoothRelUnchecked self x y
  = liftDOM
      ((self ^. jsf "createSVGPathSegCurvetoQuadraticSmoothRel"
          [toJSVal x, toJSVal y])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathLength Mozilla SVGPathElement.pathLength documentation> 
getPathLength ::
              (MonadDOM m) => SVGPathElement -> m (Maybe SVGAnimatedNumber)
getPathLength self
  = liftDOM ((self ^. js "pathLength") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathLength Mozilla SVGPathElement.pathLength documentation> 
getPathLengthUnchecked ::
                       (MonadDOM m) => SVGPathElement -> m SVGAnimatedNumber
getPathLengthUnchecked self
  = liftDOM ((self ^. js "pathLength") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathSegList Mozilla SVGPathElement.pathSegList documentation> 
getPathSegList ::
               (MonadDOM m) => SVGPathElement -> m (Maybe SVGPathSegList)
getPathSegList self
  = liftDOM ((self ^. js "pathSegList") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.pathSegList Mozilla SVGPathElement.pathSegList documentation> 
getPathSegListUnchecked ::
                        (MonadDOM m) => SVGPathElement -> m SVGPathSegList
getPathSegListUnchecked self
  = liftDOM ((self ^. js "pathSegList") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.normalizedPathSegList Mozilla SVGPathElement.normalizedPathSegList documentation> 
getNormalizedPathSegList ::
                         (MonadDOM m) => SVGPathElement -> m (Maybe SVGPathSegList)
getNormalizedPathSegList self
  = liftDOM ((self ^. js "normalizedPathSegList") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.normalizedPathSegList Mozilla SVGPathElement.normalizedPathSegList documentation> 
getNormalizedPathSegListUnchecked ::
                                  (MonadDOM m) => SVGPathElement -> m SVGPathSegList
getNormalizedPathSegListUnchecked self
  = liftDOM
      ((self ^. js "normalizedPathSegList") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedPathSegList Mozilla SVGPathElement.animatedPathSegList documentation> 
getAnimatedPathSegList ::
                       (MonadDOM m) => SVGPathElement -> m (Maybe SVGPathSegList)
getAnimatedPathSegList self
  = liftDOM ((self ^. js "animatedPathSegList") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedPathSegList Mozilla SVGPathElement.animatedPathSegList documentation> 
getAnimatedPathSegListUnchecked ::
                                (MonadDOM m) => SVGPathElement -> m SVGPathSegList
getAnimatedPathSegListUnchecked self
  = liftDOM
      ((self ^. js "animatedPathSegList") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedNormalizedPathSegList Mozilla SVGPathElement.animatedNormalizedPathSegList documentation> 
getAnimatedNormalizedPathSegList ::
                                 (MonadDOM m) => SVGPathElement -> m (Maybe SVGPathSegList)
getAnimatedNormalizedPathSegList self
  = liftDOM
      ((self ^. js "animatedNormalizedPathSegList") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathElement.animatedNormalizedPathSegList Mozilla SVGPathElement.animatedNormalizedPathSegList documentation> 
getAnimatedNormalizedPathSegListUnchecked ::
                                          (MonadDOM m) => SVGPathElement -> m SVGPathSegList
getAnimatedNormalizedPathSegListUnchecked self
  = liftDOM
      ((self ^. js "animatedNormalizedPathSegList") >>=
         fromJSValUnchecked)
