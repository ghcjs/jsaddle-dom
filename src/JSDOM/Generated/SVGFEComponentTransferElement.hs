{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGFEComponentTransferElement
       (getIn1, getIn1Unchecked, SVGFEComponentTransferElement(..),
        gTypeSVGFEComponentTransferElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEComponentTransferElement.in1 Mozilla SVGFEComponentTransferElement.in1 documentation> 
getIn1 ::
       (MonadDOM m) =>
         SVGFEComponentTransferElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftDOM ((self ^. js "in1") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEComponentTransferElement.in1 Mozilla SVGFEComponentTransferElement.in1 documentation> 
getIn1Unchecked ::
                (MonadDOM m) =>
                  SVGFEComponentTransferElement -> m SVGAnimatedString
getIn1Unchecked self
  = liftDOM ((self ^. js "in1") >>= fromJSValUnchecked)
