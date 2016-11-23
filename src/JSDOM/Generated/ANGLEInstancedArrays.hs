{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ANGLEInstancedArrays
       (drawArraysInstancedANGLE, drawElementsInstancedANGLE,
        vertexAttribDivisorANGLE,
        pattern VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE,
        ANGLEInstancedArrays(..), gTypeANGLEInstancedArrays)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ANGLEInstancedArrays.drawArraysInstancedANGLE Mozilla ANGLEInstancedArrays.drawArraysInstancedANGLE documentation> 
drawArraysInstancedANGLE ::
                         (MonadDOM m) =>
                           ANGLEInstancedArrays -> Word -> Int -> Int -> Int -> m ()
drawArraysInstancedANGLE self mode first count primcount
  = liftDOM
      (void
         (self ^. jsf "drawArraysInstancedANGLE"
            [toJSVal mode, toJSVal first, toJSVal count, toJSVal primcount]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ANGLEInstancedArrays.drawElementsInstancedANGLE Mozilla ANGLEInstancedArrays.drawElementsInstancedANGLE documentation> 
drawElementsInstancedANGLE ::
                           (MonadDOM m) =>
                             ANGLEInstancedArrays -> Word -> Int -> Word -> Int64 -> Int -> m ()
drawElementsInstancedANGLE self mode count type' offset primcount
  = liftDOM
      (void
         (self ^. jsf "drawElementsInstancedANGLE"
            [toJSVal mode, toJSVal count, toJSVal type',
             integralToDoubleToJSVal offset, toJSVal primcount]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ANGLEInstancedArrays.vertexAttribDivisorANGLE Mozilla ANGLEInstancedArrays.vertexAttribDivisorANGLE documentation> 
vertexAttribDivisorANGLE ::
                         (MonadDOM m) => ANGLEInstancedArrays -> Word -> Word -> m ()
vertexAttribDivisorANGLE self index divisor
  = liftDOM
      (void
         (self ^. jsf "vertexAttribDivisorANGLE"
            [toJSVal index, toJSVal divisor]))
pattern VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE = 35070
