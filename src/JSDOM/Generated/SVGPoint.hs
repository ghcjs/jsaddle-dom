{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPoint
       (matrixTransform, matrixTransform_, setX, getX, setY, getY,
        SVGPoint(..), gTypeSVGPoint)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.matrixTransform Mozilla SVGPoint.matrixTransform documentation> 
matrixTransform ::
                (MonadDOM m) => SVGPoint -> SVGMatrix -> m SVGPoint
matrixTransform self matrix
  = liftDOM
      ((self ^. jsf "matrixTransform" [toJSVal matrix]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.matrixTransform Mozilla SVGPoint.matrixTransform documentation> 
matrixTransform_ :: (MonadDOM m) => SVGPoint -> SVGMatrix -> m ()
matrixTransform_ self matrix
  = liftDOM (void (self ^. jsf "matrixTransform" [toJSVal matrix]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.x Mozilla SVGPoint.x documentation> 
setX :: (MonadDOM m) => SVGPoint -> Float -> m ()
setX self val = liftDOM (self ^. jss "x" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.x Mozilla SVGPoint.x documentation> 
getX :: (MonadDOM m) => SVGPoint -> m Float
getX self
  = liftDOM (realToFrac <$> ((self ^. js "x") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.y Mozilla SVGPoint.y documentation> 
setY :: (MonadDOM m) => SVGPoint -> Float -> m ()
setY self val = liftDOM (self ^. jss "y" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPoint.y Mozilla SVGPoint.y documentation> 
getY :: (MonadDOM m) => SVGPoint -> m Float
getY self
  = liftDOM (realToFrac <$> ((self ^. js "y") >>= valToNumber))
