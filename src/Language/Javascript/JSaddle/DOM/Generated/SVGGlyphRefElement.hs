{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SVGGlyphRefElement
       (setGlyphRef, getGlyphRef, setFormat, getFormat, setX, getX, setY,
        getY, setDx, getDx, setDy, getDy, SVGGlyphRefElement,
        castToSVGGlyphRefElement, gTypeSVGGlyphRefElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.glyphRef Mozilla SVGGlyphRefElement.glyphRef documentation> 
setGlyphRef ::
            (MonadDOM m, ToJSString val) => SVGGlyphRefElement -> val -> m ()
setGlyphRef self val
  = liftDOM (self ^. jss "glyphRef" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.glyphRef Mozilla SVGGlyphRefElement.glyphRef documentation> 
getGlyphRef ::
            (MonadDOM m, FromJSString result) => SVGGlyphRefElement -> m result
getGlyphRef self
  = liftDOM ((self ^. js "glyphRef") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.format Mozilla SVGGlyphRefElement.format documentation> 
setFormat ::
          (MonadDOM m, ToJSString val) => SVGGlyphRefElement -> val -> m ()
setFormat self val = liftDOM (self ^. jss "format" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.format Mozilla SVGGlyphRefElement.format documentation> 
getFormat ::
          (MonadDOM m, FromJSString result) => SVGGlyphRefElement -> m result
getFormat self
  = liftDOM ((self ^. js "format") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.x Mozilla SVGGlyphRefElement.x documentation> 
setX :: (MonadDOM m) => SVGGlyphRefElement -> Float -> m ()
setX self val = liftDOM (self ^. jss "x" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.x Mozilla SVGGlyphRefElement.x documentation> 
getX :: (MonadDOM m) => SVGGlyphRefElement -> m Float
getX self
  = liftDOM (realToFrac <$> ((self ^. js "x") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.y Mozilla SVGGlyphRefElement.y documentation> 
setY :: (MonadDOM m) => SVGGlyphRefElement -> Float -> m ()
setY self val = liftDOM (self ^. jss "y" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.y Mozilla SVGGlyphRefElement.y documentation> 
getY :: (MonadDOM m) => SVGGlyphRefElement -> m Float
getY self
  = liftDOM (realToFrac <$> ((self ^. js "y") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dx Mozilla SVGGlyphRefElement.dx documentation> 
setDx :: (MonadDOM m) => SVGGlyphRefElement -> Float -> m ()
setDx self val = liftDOM (self ^. jss "dx" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dx Mozilla SVGGlyphRefElement.dx documentation> 
getDx :: (MonadDOM m) => SVGGlyphRefElement -> m Float
getDx self
  = liftDOM (realToFrac <$> ((self ^. js "dx") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dy Mozilla SVGGlyphRefElement.dy documentation> 
setDy :: (MonadDOM m) => SVGGlyphRefElement -> Float -> m ()
setDy self val = liftDOM (self ^. jss "dy" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dy Mozilla SVGGlyphRefElement.dy documentation> 
getDy :: (MonadDOM m) => SVGGlyphRefElement -> m Float
getDy self
  = liftDOM (realToFrac <$> ((self ^. js "dy") >>= valToNumber))