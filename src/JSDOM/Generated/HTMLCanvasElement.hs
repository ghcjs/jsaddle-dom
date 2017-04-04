{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLCanvasElement
       (getContext, getContext_, getContextUnsafe, getContextUnchecked,
        toDataURL, toDataURL_, setWidth, getWidth, setHeight, getHeight,
        HTMLCanvasElement(..), gTypeHTMLCanvasElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.getContext Mozilla HTMLCanvasElement.getContext documentation> 
getContext ::
           (MonadDOM m, ToJSString contextId, ToJSVal arguments) =>
             HTMLCanvasElement ->
               contextId -> [arguments] -> m (Maybe RenderingContext)
getContext self contextId arguments
  = liftDOM
      ((self ^. jsf "getContext"
          [toJSVal contextId, toJSVal (array arguments)])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.getContext Mozilla HTMLCanvasElement.getContext documentation> 
getContext_ ::
            (MonadDOM m, ToJSString contextId, ToJSVal arguments) =>
              HTMLCanvasElement -> contextId -> [arguments] -> m ()
getContext_ self contextId arguments
  = liftDOM
      (void
         (self ^. jsf "getContext"
            [toJSVal contextId, toJSVal (array arguments)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.getContext Mozilla HTMLCanvasElement.getContext documentation> 
getContextUnsafe ::
                 (MonadDOM m, ToJSString contextId, ToJSVal arguments,
                  HasCallStack) =>
                   HTMLCanvasElement -> contextId -> [arguments] -> m RenderingContext
getContextUnsafe self contextId arguments
  = liftDOM
      (((self ^. jsf "getContext"
           [toJSVal contextId, toJSVal (array arguments)])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.getContext Mozilla HTMLCanvasElement.getContext documentation> 
getContextUnchecked ::
                    (MonadDOM m, ToJSString contextId, ToJSVal arguments) =>
                      HTMLCanvasElement -> contextId -> [arguments] -> m RenderingContext
getContextUnchecked self contextId arguments
  = liftDOM
      ((self ^. jsf "getContext"
          [toJSVal contextId, toJSVal (array arguments)])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.toDataURL Mozilla HTMLCanvasElement.toDataURL documentation> 
toDataURL ::
          (MonadDOM m, ToJSString type', FromJSString result) =>
            HTMLCanvasElement -> Maybe type' -> m result
toDataURL self type'
  = liftDOM
      ((self ^. jsf "toDataURL" [toJSVal type']) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.toDataURL Mozilla HTMLCanvasElement.toDataURL documentation> 
toDataURL_ ::
           (MonadDOM m, ToJSString type') =>
             HTMLCanvasElement -> Maybe type' -> m ()
toDataURL_ self type'
  = liftDOM (void (self ^. jsf "toDataURL" [toJSVal type']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.width Mozilla HTMLCanvasElement.width documentation> 
setWidth :: (MonadDOM m) => HTMLCanvasElement -> Word -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.width Mozilla HTMLCanvasElement.width documentation> 
getWidth :: (MonadDOM m) => HTMLCanvasElement -> m Word
getWidth self
  = liftDOM (round <$> ((self ^. js "width") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.height Mozilla HTMLCanvasElement.height documentation> 
setHeight :: (MonadDOM m) => HTMLCanvasElement -> Word -> m ()
setHeight self val = liftDOM (self ^. jss "height" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.height Mozilla HTMLCanvasElement.height documentation> 
getHeight :: (MonadDOM m) => HTMLCanvasElement -> m Word
getHeight self
  = liftDOM (round <$> ((self ^. js "height") >>= valToNumber))
