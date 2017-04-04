{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.VTTRegion
       (newVTTRegion, getTrack, setId, getId, setWidth, getWidth,
        setHeight, getHeight, setRegionAnchorX, getRegionAnchorX,
        setRegionAnchorY, getRegionAnchorY, setViewportAnchorX,
        getViewportAnchorX, setViewportAnchorY, getViewportAnchorY,
        setScroll, getScroll, VTTRegion(..), gTypeVTTRegion)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion Mozilla VTTRegion documentation> 
newVTTRegion :: (MonadDOM m) => m VTTRegion
newVTTRegion = liftDOM (VTTRegion <$> new (jsg "VTTRegion") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.track Mozilla VTTRegion.track documentation> 
getTrack :: (MonadDOM m) => VTTRegion -> m TextTrack
getTrack self
  = liftDOM ((self ^. js "track") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.id Mozilla VTTRegion.id documentation> 
setId :: (MonadDOM m, ToJSString val) => VTTRegion -> val -> m ()
setId self val = liftDOM (self ^. jss "id" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.id Mozilla VTTRegion.id documentation> 
getId :: (MonadDOM m, FromJSString result) => VTTRegion -> m result
getId self = liftDOM ((self ^. js "id") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.width Mozilla VTTRegion.width documentation> 
setWidth :: (MonadDOM m) => VTTRegion -> Double -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.width Mozilla VTTRegion.width documentation> 
getWidth :: (MonadDOM m) => VTTRegion -> m Double
getWidth self = liftDOM ((self ^. js "width") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.height Mozilla VTTRegion.height documentation> 
setHeight :: (MonadDOM m) => VTTRegion -> Int -> m ()
setHeight self val = liftDOM (self ^. jss "height" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.height Mozilla VTTRegion.height documentation> 
getHeight :: (MonadDOM m) => VTTRegion -> m Int
getHeight self
  = liftDOM (round <$> ((self ^. js "height") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.regionAnchorX Mozilla VTTRegion.regionAnchorX documentation> 
setRegionAnchorX :: (MonadDOM m) => VTTRegion -> Double -> m ()
setRegionAnchorX self val
  = liftDOM (self ^. jss "regionAnchorX" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.regionAnchorX Mozilla VTTRegion.regionAnchorX documentation> 
getRegionAnchorX :: (MonadDOM m) => VTTRegion -> m Double
getRegionAnchorX self
  = liftDOM ((self ^. js "regionAnchorX") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.regionAnchorY Mozilla VTTRegion.regionAnchorY documentation> 
setRegionAnchorY :: (MonadDOM m) => VTTRegion -> Double -> m ()
setRegionAnchorY self val
  = liftDOM (self ^. jss "regionAnchorY" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.regionAnchorY Mozilla VTTRegion.regionAnchorY documentation> 
getRegionAnchorY :: (MonadDOM m) => VTTRegion -> m Double
getRegionAnchorY self
  = liftDOM ((self ^. js "regionAnchorY") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.viewportAnchorX Mozilla VTTRegion.viewportAnchorX documentation> 
setViewportAnchorX :: (MonadDOM m) => VTTRegion -> Double -> m ()
setViewportAnchorX self val
  = liftDOM (self ^. jss "viewportAnchorX" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.viewportAnchorX Mozilla VTTRegion.viewportAnchorX documentation> 
getViewportAnchorX :: (MonadDOM m) => VTTRegion -> m Double
getViewportAnchorX self
  = liftDOM ((self ^. js "viewportAnchorX") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.viewportAnchorY Mozilla VTTRegion.viewportAnchorY documentation> 
setViewportAnchorY :: (MonadDOM m) => VTTRegion -> Double -> m ()
setViewportAnchorY self val
  = liftDOM (self ^. jss "viewportAnchorY" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.viewportAnchorY Mozilla VTTRegion.viewportAnchorY documentation> 
getViewportAnchorY :: (MonadDOM m) => VTTRegion -> m Double
getViewportAnchorY self
  = liftDOM ((self ^. js "viewportAnchorY") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.scroll Mozilla VTTRegion.scroll documentation> 
setScroll ::
          (MonadDOM m, ToJSString val) => VTTRegion -> val -> m ()
setScroll self val = liftDOM (self ^. jss "scroll" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.scroll Mozilla VTTRegion.scroll documentation> 
getScroll ::
          (MonadDOM m, FromJSString result) => VTTRegion -> m result
getScroll self
  = liftDOM ((self ^. js "scroll") >>= fromJSValUnchecked)
