{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.OESVertexArrayObject
       (createVertexArrayOES, deleteVertexArrayOES, isVertexArrayOES,
        bindVertexArrayOES, pattern VERTEX_ARRAY_BINDING_OES,
        OESVertexArrayObject, castToOESVertexArrayObject,
        gTypeOESVertexArrayObject)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.createVertexArrayOES Mozilla OESVertexArrayObject.createVertexArrayOES documentation> 
createVertexArrayOES ::
                     (MonadDOM m) =>
                       OESVertexArrayObject -> m (Maybe WebGLVertexArrayObjectOES)
createVertexArrayOES self
  = liftDOM ((self ^. js "createVertexArrayOES") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.deleteVertexArrayOES Mozilla OESVertexArrayObject.deleteVertexArrayOES documentation> 
deleteVertexArrayOES ::
                     (MonadDOM m) =>
                       OESVertexArrayObject -> Maybe WebGLVertexArrayObjectOES -> m ()
deleteVertexArrayOES self arrayObject
  = liftDOM
      (void (self ^. jsf "deleteVertexArrayOES" [toJSVal arrayObject]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.isVertexArrayOES Mozilla OESVertexArrayObject.isVertexArrayOES documentation> 
isVertexArrayOES ::
                 (MonadDOM m) =>
                   OESVertexArrayObject -> Maybe WebGLVertexArrayObjectOES -> m Bool
isVertexArrayOES self arrayObject
  = liftDOM
      ((self ^. jsf "isVertexArrayOES" [toJSVal arrayObject]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.bindVertexArrayOES Mozilla OESVertexArrayObject.bindVertexArrayOES documentation> 
bindVertexArrayOES ::
                   (MonadDOM m) =>
                     OESVertexArrayObject -> Maybe WebGLVertexArrayObjectOES -> m ()
bindVertexArrayOES self arrayObject
  = liftDOM
      (void (self ^. jsf "bindVertexArrayOES" [toJSVal arrayObject]))
pattern VERTEX_ARRAY_BINDING_OES = 34229