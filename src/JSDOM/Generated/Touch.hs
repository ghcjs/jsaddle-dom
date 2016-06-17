{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.Touch
       (getClientX, getClientY, getScreenX, getScreenY, getPageX,
        getPageY, getTarget, getIdentifier, getWebkitRadiusX,
        getWebkitRadiusY, getWebkitRotationAngle, getWebkitForce, Touch,
        castToTouch, gTypeTouch)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.clientX Mozilla Touch.clientX documentation> 
getClientX :: (MonadDOM m) => Touch -> m Int
getClientX self
  = liftDOM (round <$> ((self ^. js "clientX") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.clientY Mozilla Touch.clientY documentation> 
getClientY :: (MonadDOM m) => Touch -> m Int
getClientY self
  = liftDOM (round <$> ((self ^. js "clientY") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.screenX Mozilla Touch.screenX documentation> 
getScreenX :: (MonadDOM m) => Touch -> m Int
getScreenX self
  = liftDOM (round <$> ((self ^. js "screenX") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.screenY Mozilla Touch.screenY documentation> 
getScreenY :: (MonadDOM m) => Touch -> m Int
getScreenY self
  = liftDOM (round <$> ((self ^. js "screenY") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.pageX Mozilla Touch.pageX documentation> 
getPageX :: (MonadDOM m) => Touch -> m Int
getPageX self
  = liftDOM (round <$> ((self ^. js "pageX") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.pageY Mozilla Touch.pageY documentation> 
getPageY :: (MonadDOM m) => Touch -> m Int
getPageY self
  = liftDOM (round <$> ((self ^. js "pageY") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.target Mozilla Touch.target documentation> 
getTarget :: (MonadDOM m) => Touch -> m (Maybe EventTarget)
getTarget self = liftDOM ((self ^. js "target") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.identifier Mozilla Touch.identifier documentation> 
getIdentifier :: (MonadDOM m) => Touch -> m Word
getIdentifier self
  = liftDOM (round <$> ((self ^. js "identifier") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.webkitRadiusX Mozilla Touch.webkitRadiusX documentation> 
getWebkitRadiusX :: (MonadDOM m) => Touch -> m Int
getWebkitRadiusX self
  = liftDOM
      (round <$> ((self ^. js "webkitRadiusX") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.webkitRadiusY Mozilla Touch.webkitRadiusY documentation> 
getWebkitRadiusY :: (MonadDOM m) => Touch -> m Int
getWebkitRadiusY self
  = liftDOM
      (round <$> ((self ^. js "webkitRadiusY") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.webkitRotationAngle Mozilla Touch.webkitRotationAngle documentation> 
getWebkitRotationAngle :: (MonadDOM m) => Touch -> m Float
getWebkitRotationAngle self
  = liftDOM
      (realToFrac <$>
         ((self ^. js "webkitRotationAngle") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Touch.webkitForce Mozilla Touch.webkitForce documentation> 
getWebkitForce :: (MonadDOM m) => Touch -> m Float
getWebkitForce self
  = liftDOM
      (realToFrac <$> ((self ^. js "webkitForce") >>= valToNumber))
