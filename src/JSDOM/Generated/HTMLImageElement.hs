{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLImageElement
       (setName, getName, setAlign, getAlign, setAlt, getAlt, setBorder,
        getBorder, setCrossOrigin, getCrossOrigin, getCrossOriginUnsafe,
        getCrossOriginUnchecked, setHeight, getHeight, setHspace,
        getHspace, setIsMap, getIsMap, setLongDesc, getLongDesc, setSrc,
        getSrc, setSrcset, getSrcset, setSizes, getSizes, getCurrentSrc,
        setUseMap, getUseMap, setVspace, getVspace, setWidth, getWidth,
        getComplete, setLowsrc, getLowsrc, getNaturalHeight,
        getNaturalWidth, getX, getY, HTMLImageElement(..),
        gTypeHTMLImageElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.name Mozilla HTMLImageElement.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => HTMLImageElement -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.name Mozilla HTMLImageElement.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => HTMLImageElement -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.align Mozilla HTMLImageElement.align documentation> 
setAlign ::
         (MonadDOM m, ToJSString val) => HTMLImageElement -> val -> m ()
setAlign self val = liftDOM (self ^. jss "align" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.align Mozilla HTMLImageElement.align documentation> 
getAlign ::
         (MonadDOM m, FromJSString result) => HTMLImageElement -> m result
getAlign self
  = liftDOM ((self ^. js "align") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.alt Mozilla HTMLImageElement.alt documentation> 
setAlt ::
       (MonadDOM m, ToJSString val) => HTMLImageElement -> val -> m ()
setAlt self val = liftDOM (self ^. jss "alt" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.alt Mozilla HTMLImageElement.alt documentation> 
getAlt ::
       (MonadDOM m, FromJSString result) => HTMLImageElement -> m result
getAlt self = liftDOM ((self ^. js "alt") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.border Mozilla HTMLImageElement.border documentation> 
setBorder ::
          (MonadDOM m, ToJSString val) => HTMLImageElement -> val -> m ()
setBorder self val = liftDOM (self ^. jss "border" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.border Mozilla HTMLImageElement.border documentation> 
getBorder ::
          (MonadDOM m, FromJSString result) => HTMLImageElement -> m result
getBorder self
  = liftDOM ((self ^. js "border") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.crossOrigin Mozilla HTMLImageElement.crossOrigin documentation> 
setCrossOrigin ::
               (MonadDOM m, ToJSString val) =>
                 HTMLImageElement -> Maybe val -> m ()
setCrossOrigin self val
  = liftDOM (self ^. jss "crossOrigin" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.crossOrigin Mozilla HTMLImageElement.crossOrigin documentation> 
getCrossOrigin ::
               (MonadDOM m, FromJSString result) =>
                 HTMLImageElement -> m (Maybe result)
getCrossOrigin self
  = liftDOM ((self ^. js "crossOrigin") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.crossOrigin Mozilla HTMLImageElement.crossOrigin documentation> 
getCrossOriginUnsafe ::
                     (MonadDOM m, HasCallStack, FromJSString result) =>
                       HTMLImageElement -> m result
getCrossOriginUnsafe self
  = liftDOM
      (((self ^. js "crossOrigin") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.crossOrigin Mozilla HTMLImageElement.crossOrigin documentation> 
getCrossOriginUnchecked ::
                        (MonadDOM m, FromJSString result) => HTMLImageElement -> m result
getCrossOriginUnchecked self
  = liftDOM ((self ^. js "crossOrigin") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.height Mozilla HTMLImageElement.height documentation> 
setHeight :: (MonadDOM m) => HTMLImageElement -> Word -> m ()
setHeight self val = liftDOM (self ^. jss "height" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.height Mozilla HTMLImageElement.height documentation> 
getHeight :: (MonadDOM m) => HTMLImageElement -> m Word
getHeight self
  = liftDOM (round <$> ((self ^. js "height") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.hspace Mozilla HTMLImageElement.hspace documentation> 
setHspace :: (MonadDOM m) => HTMLImageElement -> Word -> m ()
setHspace self val = liftDOM (self ^. jss "hspace" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.hspace Mozilla HTMLImageElement.hspace documentation> 
getHspace :: (MonadDOM m) => HTMLImageElement -> m Word
getHspace self
  = liftDOM (round <$> ((self ^. js "hspace") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.isMap Mozilla HTMLImageElement.isMap documentation> 
setIsMap :: (MonadDOM m) => HTMLImageElement -> Bool -> m ()
setIsMap self val = liftDOM (self ^. jss "isMap" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.isMap Mozilla HTMLImageElement.isMap documentation> 
getIsMap :: (MonadDOM m) => HTMLImageElement -> m Bool
getIsMap self = liftDOM ((self ^. js "isMap") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.longDesc Mozilla HTMLImageElement.longDesc documentation> 
setLongDesc ::
            (MonadDOM m, ToJSString val) => HTMLImageElement -> val -> m ()
setLongDesc self val
  = liftDOM (self ^. jss "longDesc" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.longDesc Mozilla HTMLImageElement.longDesc documentation> 
getLongDesc ::
            (MonadDOM m, FromJSString result) => HTMLImageElement -> m result
getLongDesc self
  = liftDOM ((self ^. js "longDesc") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.src Mozilla HTMLImageElement.src documentation> 
setSrc ::
       (MonadDOM m, ToJSString val) => HTMLImageElement -> val -> m ()
setSrc self val = liftDOM (self ^. jss "src" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.src Mozilla HTMLImageElement.src documentation> 
getSrc ::
       (MonadDOM m, FromJSString result) => HTMLImageElement -> m result
getSrc self = liftDOM ((self ^. js "src") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.srcset Mozilla HTMLImageElement.srcset documentation> 
setSrcset ::
          (MonadDOM m, ToJSString val) => HTMLImageElement -> val -> m ()
setSrcset self val = liftDOM (self ^. jss "srcset" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.srcset Mozilla HTMLImageElement.srcset documentation> 
getSrcset ::
          (MonadDOM m, FromJSString result) => HTMLImageElement -> m result
getSrcset self
  = liftDOM ((self ^. js "srcset") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.sizes Mozilla HTMLImageElement.sizes documentation> 
setSizes ::
         (MonadDOM m, ToJSString val) => HTMLImageElement -> val -> m ()
setSizes self val = liftDOM (self ^. jss "sizes" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.sizes Mozilla HTMLImageElement.sizes documentation> 
getSizes ::
         (MonadDOM m, FromJSString result) => HTMLImageElement -> m result
getSizes self
  = liftDOM ((self ^. js "sizes") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.currentSrc Mozilla HTMLImageElement.currentSrc documentation> 
getCurrentSrc ::
              (MonadDOM m, FromJSString result) => HTMLImageElement -> m result
getCurrentSrc self
  = liftDOM ((self ^. js "currentSrc") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.useMap Mozilla HTMLImageElement.useMap documentation> 
setUseMap ::
          (MonadDOM m, ToJSString val) => HTMLImageElement -> val -> m ()
setUseMap self val = liftDOM (self ^. jss "useMap" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.useMap Mozilla HTMLImageElement.useMap documentation> 
getUseMap ::
          (MonadDOM m, FromJSString result) => HTMLImageElement -> m result
getUseMap self
  = liftDOM ((self ^. js "useMap") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.vspace Mozilla HTMLImageElement.vspace documentation> 
setVspace :: (MonadDOM m) => HTMLImageElement -> Word -> m ()
setVspace self val = liftDOM (self ^. jss "vspace" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.vspace Mozilla HTMLImageElement.vspace documentation> 
getVspace :: (MonadDOM m) => HTMLImageElement -> m Word
getVspace self
  = liftDOM (round <$> ((self ^. js "vspace") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.width Mozilla HTMLImageElement.width documentation> 
setWidth :: (MonadDOM m) => HTMLImageElement -> Word -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.width Mozilla HTMLImageElement.width documentation> 
getWidth :: (MonadDOM m) => HTMLImageElement -> m Word
getWidth self
  = liftDOM (round <$> ((self ^. js "width") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.complete Mozilla HTMLImageElement.complete documentation> 
getComplete :: (MonadDOM m) => HTMLImageElement -> m Bool
getComplete self = liftDOM ((self ^. js "complete") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.lowsrc Mozilla HTMLImageElement.lowsrc documentation> 
setLowsrc ::
          (MonadDOM m, ToJSString val) => HTMLImageElement -> val -> m ()
setLowsrc self val = liftDOM (self ^. jss "lowsrc" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.lowsrc Mozilla HTMLImageElement.lowsrc documentation> 
getLowsrc ::
          (MonadDOM m, FromJSString result) => HTMLImageElement -> m result
getLowsrc self
  = liftDOM ((self ^. js "lowsrc") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.naturalHeight Mozilla HTMLImageElement.naturalHeight documentation> 
getNaturalHeight :: (MonadDOM m) => HTMLImageElement -> m Int
getNaturalHeight self
  = liftDOM
      (round <$> ((self ^. js "naturalHeight") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.naturalWidth Mozilla HTMLImageElement.naturalWidth documentation> 
getNaturalWidth :: (MonadDOM m) => HTMLImageElement -> m Int
getNaturalWidth self
  = liftDOM (round <$> ((self ^. js "naturalWidth") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.x Mozilla HTMLImageElement.x documentation> 
getX :: (MonadDOM m) => HTMLImageElement -> m Int
getX self = liftDOM (round <$> ((self ^. js "x") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.y Mozilla HTMLImageElement.y documentation> 
getY :: (MonadDOM m) => HTMLImageElement -> m Int
getY self = liftDOM (round <$> ((self ^. js "y") >>= valToNumber))
