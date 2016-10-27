{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGRect
       (setX, getX, setY, getY, setWidth, getWidth, setHeight, getHeight,
        SVGRect(..), gTypeSVGRect)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.x Mozilla SVGRect.x documentation> 
setX :: (MonadDOM m) => SVGRect -> Float -> m ()
setX self val = liftDOM (self ^. jss "x" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.x Mozilla SVGRect.x documentation> 
getX :: (MonadDOM m) => SVGRect -> m Float
getX self
  = liftDOM (realToFrac <$> ((self ^. js "x") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.y Mozilla SVGRect.y documentation> 
setY :: (MonadDOM m) => SVGRect -> Float -> m ()
setY self val = liftDOM (self ^. jss "y" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.y Mozilla SVGRect.y documentation> 
getY :: (MonadDOM m) => SVGRect -> m Float
getY self
  = liftDOM (realToFrac <$> ((self ^. js "y") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.width Mozilla SVGRect.width documentation> 
setWidth :: (MonadDOM m) => SVGRect -> Float -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.width Mozilla SVGRect.width documentation> 
getWidth :: (MonadDOM m) => SVGRect -> m Float
getWidth self
  = liftDOM (realToFrac <$> ((self ^. js "width") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.height Mozilla SVGRect.height documentation> 
setHeight :: (MonadDOM m) => SVGRect -> Float -> m ()
setHeight self val = liftDOM (self ^. jss "height" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.height Mozilla SVGRect.height documentation> 
getHeight :: (MonadDOM m) => SVGRect -> m Float
getHeight self
  = liftDOM (realToFrac <$> ((self ^. js "height") >>= valToNumber))
