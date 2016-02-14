{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SVGSVGElement
       (suspendRedraw, unsuspendRedraw, unsuspendRedrawAll, forceRedraw,
        pauseAnimations, unpauseAnimations, animationsPaused,
        getCurrentTime, setCurrentTime, getIntersectionList,
        getEnclosureList, checkIntersection, checkEnclosure, deselectAll,
        createSVGNumber, createSVGLength, createSVGAngle, createSVGPoint,
        createSVGMatrix, createSVGRect, createSVGTransform,
        createSVGTransformFromMatrix, getElementById, getX, getY, getWidth,
        getHeight, setContentScriptType, getContentScriptType,
        setContentStyleType, getContentStyleType, getViewport,
        getPixelUnitToMillimeterX, getPixelUnitToMillimeterY,
        getScreenPixelToMillimeterX, getScreenPixelToMillimeterY,
        getUseCurrentView, getCurrentView, setCurrentScale,
        getCurrentScale, getCurrentTranslate, SVGSVGElement,
        castToSVGSVGElement, gTypeSVGSVGElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.suspendRedraw Mozilla SVGSVGElement.suspendRedraw documentation> 
suspendRedraw :: (MonadDOM m) => SVGSVGElement -> Word -> m Word
suspendRedraw self maxWaitMilliseconds
  = liftDOM
      (round <$>
         ((self ^. jsf "suspendRedraw" [toJSVal maxWaitMilliseconds]) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.unsuspendRedraw Mozilla SVGSVGElement.unsuspendRedraw documentation> 
unsuspendRedraw :: (MonadDOM m) => SVGSVGElement -> Word -> m ()
unsuspendRedraw self suspendHandleId
  = liftDOM
      (void (self ^. jsf "unsuspendRedraw" [toJSVal suspendHandleId]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.unsuspendRedrawAll Mozilla SVGSVGElement.unsuspendRedrawAll documentation> 
unsuspendRedrawAll :: (MonadDOM m) => SVGSVGElement -> m ()
unsuspendRedrawAll self
  = liftDOM (void (self ^. js "unsuspendRedrawAll"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.forceRedraw Mozilla SVGSVGElement.forceRedraw documentation> 
forceRedraw :: (MonadDOM m) => SVGSVGElement -> m ()
forceRedraw self = liftDOM (void (self ^. js "forceRedraw"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.pauseAnimations Mozilla SVGSVGElement.pauseAnimations documentation> 
pauseAnimations :: (MonadDOM m) => SVGSVGElement -> m ()
pauseAnimations self
  = liftDOM (void (self ^. js "pauseAnimations"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.unpauseAnimations Mozilla SVGSVGElement.unpauseAnimations documentation> 
unpauseAnimations :: (MonadDOM m) => SVGSVGElement -> m ()
unpauseAnimations self
  = liftDOM (void (self ^. js "unpauseAnimations"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.animationsPaused Mozilla SVGSVGElement.animationsPaused documentation> 
animationsPaused :: (MonadDOM m) => SVGSVGElement -> m Bool
animationsPaused self
  = liftDOM ((self ^. js "animationsPaused") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getCurrentTime Mozilla SVGSVGElement.getCurrentTime documentation> 
getCurrentTime :: (MonadDOM m) => SVGSVGElement -> m Float
getCurrentTime self
  = liftDOM
      (realToFrac <$> ((self ^. js "getCurrentTime") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.setCurrentTime Mozilla SVGSVGElement.setCurrentTime documentation> 
setCurrentTime :: (MonadDOM m) => SVGSVGElement -> Float -> m ()
setCurrentTime self seconds
  = liftDOM (void (self ^. jsf "setCurrentTime" [toJSVal seconds]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getIntersectionList Mozilla SVGSVGElement.getIntersectionList documentation> 
getIntersectionList ::
                    (MonadDOM m, IsSVGElement referenceElement) =>
                      SVGSVGElement ->
                        Maybe SVGRect -> Maybe referenceElement -> m (Maybe NodeList)
getIntersectionList self rect referenceElement
  = liftDOM
      ((self ^. jsf "getIntersectionList"
          [toJSVal rect, toJSVal referenceElement])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getEnclosureList Mozilla SVGSVGElement.getEnclosureList documentation> 
getEnclosureList ::
                 (MonadDOM m, IsSVGElement referenceElement) =>
                   SVGSVGElement ->
                     Maybe SVGRect -> Maybe referenceElement -> m (Maybe NodeList)
getEnclosureList self rect referenceElement
  = liftDOM
      ((self ^. jsf "getEnclosureList"
          [toJSVal rect, toJSVal referenceElement])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.checkIntersection Mozilla SVGSVGElement.checkIntersection documentation> 
checkIntersection ::
                  (MonadDOM m, IsSVGElement element) =>
                    SVGSVGElement -> Maybe element -> Maybe SVGRect -> m Bool
checkIntersection self element rect
  = liftDOM
      ((self ^. jsf "checkIntersection" [toJSVal element, toJSVal rect])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.checkEnclosure Mozilla SVGSVGElement.checkEnclosure documentation> 
checkEnclosure ::
               (MonadDOM m, IsSVGElement element) =>
                 SVGSVGElement -> Maybe element -> Maybe SVGRect -> m Bool
checkEnclosure self element rect
  = liftDOM
      ((self ^. jsf "checkEnclosure" [toJSVal element, toJSVal rect]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.deselectAll Mozilla SVGSVGElement.deselectAll documentation> 
deselectAll :: (MonadDOM m) => SVGSVGElement -> m ()
deselectAll self = liftDOM (void (self ^. js "deselectAll"))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGNumber Mozilla SVGSVGElement.createSVGNumber documentation> 
createSVGNumber ::
                (MonadDOM m) => SVGSVGElement -> m (Maybe SVGNumber)
createSVGNumber self
  = liftDOM ((self ^. js "createSVGNumber") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGLength Mozilla SVGSVGElement.createSVGLength documentation> 
createSVGLength ::
                (MonadDOM m) => SVGSVGElement -> m (Maybe SVGLength)
createSVGLength self
  = liftDOM ((self ^. js "createSVGLength") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGAngle Mozilla SVGSVGElement.createSVGAngle documentation> 
createSVGAngle ::
               (MonadDOM m) => SVGSVGElement -> m (Maybe SVGAngle)
createSVGAngle self
  = liftDOM ((self ^. js "createSVGAngle") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGPoint Mozilla SVGSVGElement.createSVGPoint documentation> 
createSVGPoint ::
               (MonadDOM m) => SVGSVGElement -> m (Maybe SVGPoint)
createSVGPoint self
  = liftDOM ((self ^. js "createSVGPoint") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGMatrix Mozilla SVGSVGElement.createSVGMatrix documentation> 
createSVGMatrix ::
                (MonadDOM m) => SVGSVGElement -> m (Maybe SVGMatrix)
createSVGMatrix self
  = liftDOM ((self ^. js "createSVGMatrix") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGRect Mozilla SVGSVGElement.createSVGRect documentation> 
createSVGRect :: (MonadDOM m) => SVGSVGElement -> m (Maybe SVGRect)
createSVGRect self
  = liftDOM ((self ^. js "createSVGRect") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGTransform Mozilla SVGSVGElement.createSVGTransform documentation> 
createSVGTransform ::
                   (MonadDOM m) => SVGSVGElement -> m (Maybe SVGTransform)
createSVGTransform self
  = liftDOM ((self ^. js "createSVGTransform") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGTransformFromMatrix Mozilla SVGSVGElement.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrix ::
                             (MonadDOM m) =>
                               SVGSVGElement -> Maybe SVGMatrix -> m (Maybe SVGTransform)
createSVGTransformFromMatrix self matrix
  = liftDOM
      ((self ^. jsf "createSVGTransformFromMatrix" [toJSVal matrix]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getElementById Mozilla SVGSVGElement.getElementById documentation> 
getElementById ::
               (MonadDOM m, ToJSString elementId) =>
                 SVGSVGElement -> elementId -> m (Maybe Element)
getElementById self elementId
  = liftDOM
      ((self ^. jsf "getElementById" [toJSVal elementId]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.x Mozilla SVGSVGElement.x documentation> 
getX ::
     (MonadDOM m) => SVGSVGElement -> m (Maybe SVGAnimatedLength)
getX self = liftDOM ((self ^. js "x") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.y Mozilla SVGSVGElement.y documentation> 
getY ::
     (MonadDOM m) => SVGSVGElement -> m (Maybe SVGAnimatedLength)
getY self = liftDOM ((self ^. js "y") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.width Mozilla SVGSVGElement.width documentation> 
getWidth ::
         (MonadDOM m) => SVGSVGElement -> m (Maybe SVGAnimatedLength)
getWidth self = liftDOM ((self ^. js "width") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.height Mozilla SVGSVGElement.height documentation> 
getHeight ::
          (MonadDOM m) => SVGSVGElement -> m (Maybe SVGAnimatedLength)
getHeight self = liftDOM ((self ^. js "height") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentScriptType Mozilla SVGSVGElement.contentScriptType documentation> 
setContentScriptType ::
                     (MonadDOM m, ToJSString val) => SVGSVGElement -> val -> m ()
setContentScriptType self val
  = liftDOM (self ^. jss "contentScriptType" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentScriptType Mozilla SVGSVGElement.contentScriptType documentation> 
getContentScriptType ::
                     (MonadDOM m, FromJSString result) => SVGSVGElement -> m result
getContentScriptType self
  = liftDOM ((self ^. js "contentScriptType") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentStyleType Mozilla SVGSVGElement.contentStyleType documentation> 
setContentStyleType ::
                    (MonadDOM m, ToJSString val) => SVGSVGElement -> val -> m ()
setContentStyleType self val
  = liftDOM (self ^. jss "contentStyleType" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentStyleType Mozilla SVGSVGElement.contentStyleType documentation> 
getContentStyleType ::
                    (MonadDOM m, FromJSString result) => SVGSVGElement -> m result
getContentStyleType self
  = liftDOM ((self ^. js "contentStyleType") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.viewport Mozilla SVGSVGElement.viewport documentation> 
getViewport :: (MonadDOM m) => SVGSVGElement -> m (Maybe SVGRect)
getViewport self = liftDOM ((self ^. js "viewport") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.pixelUnitToMillimeterX Mozilla SVGSVGElement.pixelUnitToMillimeterX documentation> 
getPixelUnitToMillimeterX ::
                          (MonadDOM m) => SVGSVGElement -> m Float
getPixelUnitToMillimeterX self
  = liftDOM
      (realToFrac <$>
         ((self ^. js "pixelUnitToMillimeterX") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.pixelUnitToMillimeterY Mozilla SVGSVGElement.pixelUnitToMillimeterY documentation> 
getPixelUnitToMillimeterY ::
                          (MonadDOM m) => SVGSVGElement -> m Float
getPixelUnitToMillimeterY self
  = liftDOM
      (realToFrac <$>
         ((self ^. js "pixelUnitToMillimeterY") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.screenPixelToMillimeterX Mozilla SVGSVGElement.screenPixelToMillimeterX documentation> 
getScreenPixelToMillimeterX ::
                            (MonadDOM m) => SVGSVGElement -> m Float
getScreenPixelToMillimeterX self
  = liftDOM
      (realToFrac <$>
         ((self ^. js "screenPixelToMillimeterX") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.screenPixelToMillimeterY Mozilla SVGSVGElement.screenPixelToMillimeterY documentation> 
getScreenPixelToMillimeterY ::
                            (MonadDOM m) => SVGSVGElement -> m Float
getScreenPixelToMillimeterY self
  = liftDOM
      (realToFrac <$>
         ((self ^. js "screenPixelToMillimeterY") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.useCurrentView Mozilla SVGSVGElement.useCurrentView documentation> 
getUseCurrentView :: (MonadDOM m) => SVGSVGElement -> m Bool
getUseCurrentView self
  = liftDOM ((self ^. js "useCurrentView") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentView Mozilla SVGSVGElement.currentView documentation> 
getCurrentView ::
               (MonadDOM m) => SVGSVGElement -> m (Maybe SVGViewSpec)
getCurrentView self
  = liftDOM ((self ^. js "currentView") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentScale Mozilla SVGSVGElement.currentScale documentation> 
setCurrentScale :: (MonadDOM m) => SVGSVGElement -> Float -> m ()
setCurrentScale self val
  = liftDOM (self ^. jss "currentScale" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentScale Mozilla SVGSVGElement.currentScale documentation> 
getCurrentScale :: (MonadDOM m) => SVGSVGElement -> m Float
getCurrentScale self
  = liftDOM
      (realToFrac <$> ((self ^. js "currentScale") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentTranslate Mozilla SVGSVGElement.currentTranslate documentation> 
getCurrentTranslate ::
                    (MonadDOM m) => SVGSVGElement -> m (Maybe SVGPoint)
getCurrentTranslate self
  = liftDOM ((self ^. js "currentTranslate") >>= fromJSVal)