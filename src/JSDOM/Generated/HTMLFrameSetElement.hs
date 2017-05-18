{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLFrameSetElement
       (setCols, getCols, setRows, getRows, blur, error, focus, focusin,
        focusout, load, resize, scroll, webKitWillRevealBottom,
        webKitWillRevealLeft, webKitWillRevealRight, webKitWillRevealTop,
        HTMLFrameSetElement(..), gTypeHTMLFrameSetElement)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.cols Mozilla HTMLFrameSetElement.cols documentation> 
setCols ::
        (MonadDOM m, ToJSString val) => HTMLFrameSetElement -> val -> m ()
setCols self val = liftDOM (self ^. jss "cols" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.cols Mozilla HTMLFrameSetElement.cols documentation> 
getCols ::
        (MonadDOM m, FromJSString result) =>
          HTMLFrameSetElement -> m result
getCols self = liftDOM ((self ^. js "cols") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.rows Mozilla HTMLFrameSetElement.rows documentation> 
setRows ::
        (MonadDOM m, ToJSString val) => HTMLFrameSetElement -> val -> m ()
setRows self val = liftDOM (self ^. jss "rows" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.rows Mozilla HTMLFrameSetElement.rows documentation> 
getRows ::
        (MonadDOM m, FromJSString result) =>
          HTMLFrameSetElement -> m result
getRows self = liftDOM ((self ^. js "rows") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onblur Mozilla HTMLFrameSetElement.onblur documentation> 
blur :: EventName HTMLFrameSetElement FocusEvent
blur = unsafeEventName (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onerror Mozilla HTMLFrameSetElement.onerror documentation> 
error :: EventName HTMLFrameSetElement UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onfocus Mozilla HTMLFrameSetElement.onfocus documentation> 
focus :: EventName HTMLFrameSetElement FocusEvent
focus = unsafeEventName (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onfocusin Mozilla HTMLFrameSetElement.onfocusin documentation> 
focusin :: EventName HTMLFrameSetElement onfocusin
focusin = unsafeEventName (toJSString "focusin")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onfocusout Mozilla HTMLFrameSetElement.onfocusout documentation> 
focusout :: EventName HTMLFrameSetElement onfocusout
focusout = unsafeEventName (toJSString "focusout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onload Mozilla HTMLFrameSetElement.onload documentation> 
load :: EventName HTMLFrameSetElement UIEvent
load = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onresize Mozilla HTMLFrameSetElement.onresize documentation> 
resize :: EventName HTMLFrameSetElement UIEvent
resize = unsafeEventName (toJSString "resize")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onscroll Mozilla HTMLFrameSetElement.onscroll documentation> 
scroll :: EventName HTMLFrameSetElement UIEvent
scroll = unsafeEventName (toJSString "scroll")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onwebkitwillrevealbottom Mozilla HTMLFrameSetElement.onwebkitwillrevealbottom documentation> 
webKitWillRevealBottom :: EventName HTMLFrameSetElement Event
webKitWillRevealBottom
  = unsafeEventName (toJSString "webkitwillrevealbottom")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onwebkitwillrevealleft Mozilla HTMLFrameSetElement.onwebkitwillrevealleft documentation> 
webKitWillRevealLeft :: EventName HTMLFrameSetElement Event
webKitWillRevealLeft
  = unsafeEventName (toJSString "webkitwillrevealleft")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onwebkitwillrevealright Mozilla HTMLFrameSetElement.onwebkitwillrevealright documentation> 
webKitWillRevealRight :: EventName HTMLFrameSetElement Event
webKitWillRevealRight
  = unsafeEventName (toJSString "webkitwillrevealright")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onwebkitwillrevealtop Mozilla HTMLFrameSetElement.onwebkitwillrevealtop documentation> 
webKitWillRevealTop :: EventName HTMLFrameSetElement Event
webKitWillRevealTop
  = unsafeEventName (toJSString "webkitwillrevealtop")
