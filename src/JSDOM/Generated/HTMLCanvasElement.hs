{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLCanvasElement
       (toDataURL, getContext, probablySupportsContext, setWidth,
        getWidth, setHeight, getHeight, HTMLCanvasElement,
        castToHTMLCanvasElement, gTypeHTMLCanvasElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.toDataURL Mozilla HTMLCanvasElement.toDataURL documentation> 
toDataURL ::
          (MonadDOM m, ToJSString type', FromJSString result) =>
            HTMLCanvasElement -> Maybe type' -> m result
toDataURL self type'
  = liftDOM
      ((self ^. jsf "toDataURL" [toJSVal type']) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.getContext Mozilla HTMLCanvasElement.getContext documentation> 
getContext ::
           (MonadDOM m, ToJSString contextId) =>
             HTMLCanvasElement -> contextId -> m JSVal
getContext self contextId
  = liftDOM
      ((self ^. jsf "getContext" [toJSVal contextId]) >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.probablySupportsContext Mozilla HTMLCanvasElement.probablySupportsContext documentation> 
probablySupportsContext ::
                        (MonadDOM m, ToJSString contextId) =>
                          HTMLCanvasElement -> contextId -> m JSVal
probablySupportsContext self contextId
  = liftDOM
      ((self ^. jsf "probablySupportsContext" [toJSVal contextId]) >>=
         toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.width Mozilla HTMLCanvasElement.width documentation> 
setWidth :: (MonadDOM m) => HTMLCanvasElement -> Int -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.width Mozilla HTMLCanvasElement.width documentation> 
getWidth :: (MonadDOM m) => HTMLCanvasElement -> m Int
getWidth self
  = liftDOM (round <$> ((self ^. js "width") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.height Mozilla HTMLCanvasElement.height documentation> 
setHeight :: (MonadDOM m) => HTMLCanvasElement -> Int -> m ()
setHeight self val = liftDOM (self ^. jss "height" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.height Mozilla HTMLCanvasElement.height documentation> 
getHeight :: (MonadDOM m) => HTMLCanvasElement -> m Int
getHeight self
  = liftDOM (round <$> ((self ^. js "height") >>= valToNumber))
