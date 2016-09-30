{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.UIEvent
       (initUIEvent, getView, getDetail, getKeyCode, getCharCode,
        getLayerX, getLayerY, getPageX, getPageY, getWhich, UIEvent,
        castToUIEvent, gTypeUIEvent, IsUIEvent, toUIEvent)
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
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.initUIEvent Mozilla UIEvent.initUIEvent documentation> 
initUIEvent ::
            (MonadDOM m, IsUIEvent self, ToJSString type') =>
              self -> type' -> Bool -> Bool -> Maybe Window -> Int -> m ()
initUIEvent self type' canBubble cancelable view detail
  = liftDOM
      (void
         ((toUIEvent self) ^. jsf "initUIEvent"
            [toJSVal type', toJSVal canBubble, toJSVal cancelable,
             toJSVal view, toJSVal detail]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.view Mozilla UIEvent.view documentation> 
getView :: (MonadDOM m, IsUIEvent self) => self -> m (Maybe Window)
getView self
  = liftDOM (((toUIEvent self) ^. js "view") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.detail Mozilla UIEvent.detail documentation> 
getDetail :: (MonadDOM m, IsUIEvent self) => self -> m Int
getDetail self
  = liftDOM
      (round <$> (((toUIEvent self) ^. js "detail") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.keyCode Mozilla UIEvent.keyCode documentation> 
getKeyCode :: (MonadDOM m, IsUIEvent self) => self -> m Int
getKeyCode self
  = liftDOM
      (round <$> (((toUIEvent self) ^. js "keyCode") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.charCode Mozilla UIEvent.charCode documentation> 
getCharCode :: (MonadDOM m, IsUIEvent self) => self -> m Int
getCharCode self
  = liftDOM
      (round <$> (((toUIEvent self) ^. js "charCode") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.layerX Mozilla UIEvent.layerX documentation> 
getLayerX :: (MonadDOM m, IsUIEvent self) => self -> m Int
getLayerX self
  = liftDOM
      (round <$> (((toUIEvent self) ^. js "layerX") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.layerY Mozilla UIEvent.layerY documentation> 
getLayerY :: (MonadDOM m, IsUIEvent self) => self -> m Int
getLayerY self
  = liftDOM
      (round <$> (((toUIEvent self) ^. js "layerY") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.pageX Mozilla UIEvent.pageX documentation> 
getPageX :: (MonadDOM m, IsUIEvent self) => self -> m Int
getPageX self
  = liftDOM
      (round <$> (((toUIEvent self) ^. js "pageX") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.pageY Mozilla UIEvent.pageY documentation> 
getPageY :: (MonadDOM m, IsUIEvent self) => self -> m Int
getPageY self
  = liftDOM
      (round <$> (((toUIEvent self) ^. js "pageY") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UIEvent.which Mozilla UIEvent.which documentation> 
getWhich :: (MonadDOM m, IsUIEvent self) => self -> m Int
getWhich self
  = liftDOM
      (round <$> (((toUIEvent self) ^. js "which") >>= valToNumber))
