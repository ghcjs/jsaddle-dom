{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SVGPathSegLinetoAbs
       (setX, getX, setY, getY, SVGPathSegLinetoAbs,
        castToSVGPathSegLinetoAbs, gTypeSVGPathSegLinetoAbs)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoAbs.x Mozilla SVGPathSegLinetoAbs.x documentation> 
setX :: (MonadDOM m) => SVGPathSegLinetoAbs -> Float -> m ()
setX self val = liftDOM (self ^. jss "x" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoAbs.x Mozilla SVGPathSegLinetoAbs.x documentation> 
getX :: (MonadDOM m) => SVGPathSegLinetoAbs -> m Float
getX self
  = liftDOM (realToFrac <$> ((self ^. js "x") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoAbs.y Mozilla SVGPathSegLinetoAbs.y documentation> 
setY :: (MonadDOM m) => SVGPathSegLinetoAbs -> Float -> m ()
setY self val = liftDOM (self ^. jss "y" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoAbs.y Mozilla SVGPathSegLinetoAbs.y documentation> 
getY :: (MonadDOM m) => SVGPathSegLinetoAbs -> m Float
getY self
  = liftDOM (realToFrac <$> ((self ^. js "y") >>= valToNumber))