{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SVGUnitTypes
       (pattern SVG_UNIT_TYPE_UNKNOWN,
        pattern SVG_UNIT_TYPE_USERSPACEONUSE,
        pattern SVG_UNIT_TYPE_OBJECTBOUNDINGBOX, SVGUnitTypes,
        castToSVGUnitTypes, gTypeSVGUnitTypes)
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
pattern SVG_UNIT_TYPE_UNKNOWN = 0
pattern SVG_UNIT_TYPE_USERSPACEONUSE = 1
pattern SVG_UNIT_TYPE_OBJECTBOUNDINGBOX = 2