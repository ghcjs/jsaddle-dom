{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPathSegLinetoHorizontalAbs
       (setX, getX, SVGPathSegLinetoHorizontalAbs,
        castToSVGPathSegLinetoHorizontalAbs,
        gTypeSVGPathSegLinetoHorizontalAbs)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoHorizontalAbs.x Mozilla SVGPathSegLinetoHorizontalAbs.x documentation> 
setX ::
     (MonadDOM m) => SVGPathSegLinetoHorizontalAbs -> Float -> m ()
setX self val = liftDOM (self ^. jss "x" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoHorizontalAbs.x Mozilla SVGPathSegLinetoHorizontalAbs.x documentation> 
getX :: (MonadDOM m) => SVGPathSegLinetoHorizontalAbs -> m Float
getX self
  = liftDOM (realToFrac <$> ((self ^. js "x") >>= valToNumber))
