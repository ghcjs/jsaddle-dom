{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Window
       (decodeURI, decodeURI_, decodeURIComponent, decodeURIComponent_,
        encodeURI, encodeURI_, encodeURIComponent, encodeURIComponent_,
        fetch, fetch_, openDatabase, openDatabase_, openDatabaseUnsafe,
        openDatabaseUnchecked, close, stop, focus, blur, open, open_,
        openUnsafe, openUnchecked, alertNoMessage, alert, confirm,
        confirm_, prompt, prompt_, promptUnsafe, promptUnchecked, print,
        requestAnimationFrame, requestAnimationFrame_,
        cancelAnimationFrame, postMessage, captureEvents, releaseEvents,
        getComputedStyle, getComputedStyle_, matchMedia, matchMedia_,
        moveTo, moveBy, resizeTo, resizeBy, scrollOpt, scroll, scrollToOpt,
        scrollTo, scrollByOpt, scrollBy, getSelection, getSelection_,
        getSelectionUnsafe, getSelectionUnchecked, find, find_,
        webkitRequestAnimationFrame, webkitRequestAnimationFrame_,
        webkitCancelAnimationFrame, webkitCancelRequestAnimationFrame,
        getMatchedCSSRules, getMatchedCSSRules_, showModalDialog,
        showModalDialog_, webkitConvertPointFromPageToNode,
        webkitConvertPointFromPageToNode_,
        webkitConvertPointFromNodeToPage,
        webkitConvertPointFromNodeToPage_,
        collectMatchingElementsInFlatTree,
        collectMatchingElementsInFlatTree_, matchingElementInFlatTree,
        matchingElementInFlatTree_, matchingElementInFlatTreeUnsafe,
        matchingElementInFlatTreeUnchecked, getIndexedDB,
        getWebkitIndexedDB, getWebkitStorageInfo, getSpeechSynthesis,
        getWindow, getSelf, getDocument, setName, getName, getLocation,
        getHistory, getCustomElements, getLocationbar, getMenubar,
        getPersonalbar, getScrollbars, getStatusbar, getToolbar, setStatus,
        getStatus, getClosed, getFrames, getLength, getTop, getTopUnsafe,
        getTopUnchecked, getOpener, getOpenerUnsafe, getOpenerUnchecked,
        getParent, getParentUnsafe, getParentUnchecked, getFrameElement,
        getFrameElementUnsafe, getFrameElementUnchecked, getNavigator,
        getApplicationCache, getSessionStorage, getLocalStorage, getScreen,
        getInnerHeight, getInnerWidth, getScrollX, getPageXOffset,
        getScrollY, getPageYOffset, getScreenX, getScreenY, getOuterWidth,
        getOuterHeight, getDevicePixelRatio, getOrientation, getEvent,
        setDefaultStatus, getDefaultStatus, setDefaultstatus,
        getDefaultstatus, getOffscreenBuffering, getScreenLeft,
        getScreenTop, getClientInformation, getStyleMedia, gestureChange,
        gestureEnd, gestureStart, deviceMotion, deviceOrientation,
        webKitDeviceProximity, webKitAnimationEnd,
        webKitAnimationIteration, webKitAnimationStart,
        webKitTransitionEnd, Window(..), gTypeWindow)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.decodeURI Mozilla Window.decodeURI documentation> 
decodeURI ::
          (MonadDOM m, ToJSString uri, FromJSString result) =>
            Window -> uri -> m result
decodeURI self uri
  = liftDOM
      ((self ^. jsf "decodeURI" [toJSVal uri]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.decodeURI Mozilla Window.decodeURI documentation> 
decodeURI_ :: (MonadDOM m, ToJSString uri) => Window -> uri -> m ()
decodeURI_ self uri
  = liftDOM (void (self ^. jsf "decodeURI" [toJSVal uri]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.decodeURIComponent Mozilla Window.decodeURIComponent documentation> 
decodeURIComponent ::
                   (MonadDOM m, ToJSString uri, FromJSString result) =>
                     Window -> uri -> m result
decodeURIComponent self uri
  = liftDOM
      ((self ^. jsf "decodeURIComponent" [toJSVal uri]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.decodeURIComponent Mozilla Window.decodeURIComponent documentation> 
decodeURIComponent_ ::
                    (MonadDOM m, ToJSString uri) => Window -> uri -> m ()
decodeURIComponent_ self uri
  = liftDOM (void (self ^. jsf "decodeURIComponent" [toJSVal uri]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.encodeURI Mozilla Window.encodeURI documentation> 
encodeURI ::
          (MonadDOM m, ToJSString uri, FromJSString result) =>
            Window -> uri -> m result
encodeURI self uri
  = liftDOM
      ((self ^. jsf "encodeURI" [toJSVal uri]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.encodeURI Mozilla Window.encodeURI documentation> 
encodeURI_ :: (MonadDOM m, ToJSString uri) => Window -> uri -> m ()
encodeURI_ self uri
  = liftDOM (void (self ^. jsf "encodeURI" [toJSVal uri]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.encodeURIComponent Mozilla Window.encodeURIComponent documentation> 
encodeURIComponent ::
                   (MonadDOM m, ToJSString uri, FromJSString result) =>
                     Window -> uri -> m result
encodeURIComponent self uri
  = liftDOM
      ((self ^. jsf "encodeURIComponent" [toJSVal uri]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.encodeURIComponent Mozilla Window.encodeURIComponent documentation> 
encodeURIComponent_ ::
                    (MonadDOM m, ToJSString uri) => Window -> uri -> m ()
encodeURIComponent_ self uri
  = liftDOM (void (self ^. jsf "encodeURIComponent" [toJSVal uri]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.fetch Mozilla Window.fetch documentation> 
fetch ::
      (MonadDOM m, ToJSVal input) =>
        Window -> input -> Maybe RequestInit -> m Response
fetch self input init
  = liftDOM
      (((self ^. jsf "fetch" [toJSVal input, toJSVal init]) >>=
          readPromise)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.fetch Mozilla Window.fetch documentation> 
fetch_ ::
       (MonadDOM m, ToJSVal input) =>
         Window -> input -> Maybe RequestInit -> m ()
fetch_ self input init
  = liftDOM
      (void (self ^. jsf "fetch" [toJSVal input, toJSVal init]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.openDatabase Mozilla Window.openDatabase documentation> 
openDatabase ::
             (MonadDOM m, ToJSString name, ToJSString version,
              ToJSString displayName) =>
               Window ->
                 name ->
                   version ->
                     displayName -> Word -> Maybe DatabaseCallback -> m (Maybe Database)
openDatabase self name version displayName estimatedSize
  creationCallback
  = liftDOM
      ((self ^. jsf "openDatabase"
          [toJSVal name, toJSVal version, toJSVal displayName,
           toJSVal estimatedSize, toJSVal creationCallback])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.openDatabase Mozilla Window.openDatabase documentation> 
openDatabase_ ::
              (MonadDOM m, ToJSString name, ToJSString version,
               ToJSString displayName) =>
                Window ->
                  name ->
                    version -> displayName -> Word -> Maybe DatabaseCallback -> m ()
openDatabase_ self name version displayName estimatedSize
  creationCallback
  = liftDOM
      (void
         (self ^. jsf "openDatabase"
            [toJSVal name, toJSVal version, toJSVal displayName,
             toJSVal estimatedSize, toJSVal creationCallback]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.openDatabase Mozilla Window.openDatabase documentation> 
openDatabaseUnsafe ::
                   (MonadDOM m, ToJSString name, ToJSString version,
                    ToJSString displayName, HasCallStack) =>
                     Window ->
                       name ->
                         version ->
                           displayName -> Word -> Maybe DatabaseCallback -> m Database
openDatabaseUnsafe self name version displayName estimatedSize
  creationCallback
  = liftDOM
      (((self ^. jsf "openDatabase"
           [toJSVal name, toJSVal version, toJSVal displayName,
            toJSVal estimatedSize, toJSVal creationCallback])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.openDatabase Mozilla Window.openDatabase documentation> 
openDatabaseUnchecked ::
                      (MonadDOM m, ToJSString name, ToJSString version,
                       ToJSString displayName) =>
                        Window ->
                          name ->
                            version ->
                              displayName -> Word -> Maybe DatabaseCallback -> m Database
openDatabaseUnchecked self name version displayName estimatedSize
  creationCallback
  = liftDOM
      ((self ^. jsf "openDatabase"
          [toJSVal name, toJSVal version, toJSVal displayName,
           toJSVal estimatedSize, toJSVal creationCallback])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.close Mozilla Window.close documentation> 
close :: (MonadDOM m) => Window -> m ()
close self = liftDOM (void (self ^. jsf "close" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.stop Mozilla Window.stop documentation> 
stop :: (MonadDOM m) => Window -> m ()
stop self = liftDOM (void (self ^. jsf "stop" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.focus Mozilla Window.focus documentation> 
focus :: (MonadDOM m) => Window -> m ()
focus self = liftDOM (void (self ^. jsf "focus" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.blur Mozilla Window.blur documentation> 
blur :: (MonadDOM m) => Window -> m ()
blur self = liftDOM (void (self ^. jsf "blur" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.open Mozilla Window.open documentation> 
open ::
     (MonadDOM m, ToJSString url, ToJSString target,
      ToJSString features) =>
       Window ->
         Maybe url -> Maybe target -> Maybe features -> m (Maybe Window)
open self url target features
  = liftDOM
      ((self ^. jsf "open"
          [toJSVal url, toJSVal target, toJSVal features])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.open Mozilla Window.open documentation> 
open_ ::
      (MonadDOM m, ToJSString url, ToJSString target,
       ToJSString features) =>
        Window -> Maybe url -> Maybe target -> Maybe features -> m ()
open_ self url target features
  = liftDOM
      (void
         (self ^. jsf "open"
            [toJSVal url, toJSVal target, toJSVal features]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.open Mozilla Window.open documentation> 
openUnsafe ::
           (MonadDOM m, ToJSString url, ToJSString target,
            ToJSString features, HasCallStack) =>
             Window -> Maybe url -> Maybe target -> Maybe features -> m Window
openUnsafe self url target features
  = liftDOM
      (((self ^. jsf "open"
           [toJSVal url, toJSVal target, toJSVal features])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.open Mozilla Window.open documentation> 
openUnchecked ::
              (MonadDOM m, ToJSString url, ToJSString target,
               ToJSString features) =>
                Window -> Maybe url -> Maybe target -> Maybe features -> m Window
openUnchecked self url target features
  = liftDOM
      ((self ^. jsf "open"
          [toJSVal url, toJSVal target, toJSVal features])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.alert Mozilla Window.alert documentation> 
alertNoMessage :: (MonadDOM m) => Window -> m ()
alertNoMessage self = liftDOM (void (self ^. jsf "alert" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.alert Mozilla Window.alert documentation> 
alert ::
      (MonadDOM m, ToJSString message) => Window -> message -> m ()
alert self message
  = liftDOM (void (self ^. jsf "alert" [toJSVal message]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.confirm Mozilla Window.confirm documentation> 
confirm ::
        (MonadDOM m, ToJSString message) =>
          Window -> Maybe message -> m Bool
confirm self message
  = liftDOM ((self ^. jsf "confirm" [toJSVal message]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.confirm Mozilla Window.confirm documentation> 
confirm_ ::
         (MonadDOM m, ToJSString message) => Window -> Maybe message -> m ()
confirm_ self message
  = liftDOM (void (self ^. jsf "confirm" [toJSVal message]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.prompt Mozilla Window.prompt documentation> 
prompt ::
       (MonadDOM m, ToJSString message, ToJSString defaultValue,
        FromJSString result) =>
         Window -> Maybe message -> Maybe defaultValue -> m (Maybe result)
prompt self message defaultValue
  = liftDOM
      ((self ^. jsf "prompt" [toJSVal message, toJSVal defaultValue]) >>=
         fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.prompt Mozilla Window.prompt documentation> 
prompt_ ::
        (MonadDOM m, ToJSString message, ToJSString defaultValue) =>
          Window -> Maybe message -> Maybe defaultValue -> m ()
prompt_ self message defaultValue
  = liftDOM
      (void
         (self ^. jsf "prompt" [toJSVal message, toJSVal defaultValue]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.prompt Mozilla Window.prompt documentation> 
promptUnsafe ::
             (MonadDOM m, ToJSString message, ToJSString defaultValue,
              HasCallStack, FromJSString result) =>
               Window -> Maybe message -> Maybe defaultValue -> m result
promptUnsafe self message defaultValue
  = liftDOM
      (((self ^. jsf "prompt" [toJSVal message, toJSVal defaultValue])
          >>= fromMaybeJSString)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.prompt Mozilla Window.prompt documentation> 
promptUnchecked ::
                (MonadDOM m, ToJSString message, ToJSString defaultValue,
                 FromJSString result) =>
                  Window -> Maybe message -> Maybe defaultValue -> m result
promptUnchecked self message defaultValue
  = liftDOM
      ((self ^. jsf "prompt" [toJSVal message, toJSVal defaultValue]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.print Mozilla Window.print documentation> 
print :: (MonadDOM m) => Window -> m ()
print self = liftDOM (void (self ^. jsf "print" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.requestAnimationFrame Mozilla Window.requestAnimationFrame documentation> 
requestAnimationFrame ::
                      (MonadDOM m) => Window -> RequestAnimationFrameCallback -> m Int
requestAnimationFrame self callback
  = liftDOM
      (round <$>
         ((self ^. jsf "requestAnimationFrame" [toJSVal callback]) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.requestAnimationFrame Mozilla Window.requestAnimationFrame documentation> 
requestAnimationFrame_ ::
                       (MonadDOM m) => Window -> RequestAnimationFrameCallback -> m ()
requestAnimationFrame_ self callback
  = liftDOM
      (void (self ^. jsf "requestAnimationFrame" [toJSVal callback]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.cancelAnimationFrame Mozilla Window.cancelAnimationFrame documentation> 
cancelAnimationFrame :: (MonadDOM m) => Window -> Int -> m ()
cancelAnimationFrame self handle
  = liftDOM
      (void (self ^. jsf "cancelAnimationFrame" [toJSVal handle]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.postMessage Mozilla Window.postMessage documentation> 
postMessage ::
            (MonadDOM m, ToJSVal message, ToJSString targetOrigin,
             IsGObject transfer) =>
              Window -> message -> targetOrigin -> [transfer] -> m ()
postMessage self message targetOrigin transfer
  = liftDOM
      (void
         (self ^. jsf "postMessage"
            [toJSVal message, toJSVal targetOrigin, toJSVal (array transfer)]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.captureEvents Mozilla Window.captureEvents documentation> 
captureEvents :: (MonadDOM m) => Window -> m ()
captureEvents self
  = liftDOM (void (self ^. jsf "captureEvents" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.releaseEvents Mozilla Window.releaseEvents documentation> 
releaseEvents :: (MonadDOM m) => Window -> m ()
releaseEvents self
  = liftDOM (void (self ^. jsf "releaseEvents" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.getComputedStyle Mozilla Window.getComputedStyle documentation> 
getComputedStyle ::
                 (MonadDOM m, IsElement element, ToJSString pseudoElement) =>
                   Window -> element -> Maybe pseudoElement -> m CSSStyleDeclaration
getComputedStyle self element pseudoElement
  = liftDOM
      ((self ^. jsf "getComputedStyle"
          [toJSVal element, toJSVal pseudoElement])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.getComputedStyle Mozilla Window.getComputedStyle documentation> 
getComputedStyle_ ::
                  (MonadDOM m, IsElement element, ToJSString pseudoElement) =>
                    Window -> element -> Maybe pseudoElement -> m ()
getComputedStyle_ self element pseudoElement
  = liftDOM
      (void
         (self ^. jsf "getComputedStyle"
            [toJSVal element, toJSVal pseudoElement]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.matchMedia Mozilla Window.matchMedia documentation> 
matchMedia ::
           (MonadDOM m, ToJSString query) =>
             Window -> query -> m MediaQueryList
matchMedia self query
  = liftDOM
      ((self ^. jsf "matchMedia" [toJSVal query]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.matchMedia Mozilla Window.matchMedia documentation> 
matchMedia_ ::
            (MonadDOM m, ToJSString query) => Window -> query -> m ()
matchMedia_ self query
  = liftDOM (void (self ^. jsf "matchMedia" [toJSVal query]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.moveTo Mozilla Window.moveTo documentation> 
moveTo ::
       (MonadDOM m) => Window -> Maybe Float -> Maybe Float -> m ()
moveTo self x y
  = liftDOM (void (self ^. jsf "moveTo" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.moveBy Mozilla Window.moveBy documentation> 
moveBy ::
       (MonadDOM m) => Window -> Maybe Float -> Maybe Float -> m ()
moveBy self x y
  = liftDOM (void (self ^. jsf "moveBy" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.resizeTo Mozilla Window.resizeTo documentation> 
resizeTo ::
         (MonadDOM m) => Window -> Maybe Float -> Maybe Float -> m ()
resizeTo self width height
  = liftDOM
      (void (self ^. jsf "resizeTo" [toJSVal width, toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.resizeBy Mozilla Window.resizeBy documentation> 
resizeBy ::
         (MonadDOM m) => Window -> Maybe Float -> Maybe Float -> m ()
resizeBy self x y
  = liftDOM (void (self ^. jsf "resizeBy" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scroll Mozilla Window.scroll documentation> 
scrollOpt ::
          (MonadDOM m) => Window -> Maybe ScrollToOptions -> m ()
scrollOpt self options
  = liftDOM (void (self ^. jsf "scroll" [toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scroll Mozilla Window.scroll documentation> 
scroll :: (MonadDOM m) => Window -> Double -> Double -> m ()
scroll self x y
  = liftDOM (void (self ^. jsf "scroll" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollTo Mozilla Window.scrollTo documentation> 
scrollToOpt ::
            (MonadDOM m) => Window -> Maybe ScrollToOptions -> m ()
scrollToOpt self options
  = liftDOM (void (self ^. jsf "scrollTo" [toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollTo Mozilla Window.scrollTo documentation> 
scrollTo :: (MonadDOM m) => Window -> Double -> Double -> m ()
scrollTo self x y
  = liftDOM (void (self ^. jsf "scrollTo" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollBy Mozilla Window.scrollBy documentation> 
scrollByOpt ::
            (MonadDOM m) => Window -> Maybe ScrollToOptions -> m ()
scrollByOpt self option
  = liftDOM (void (self ^. jsf "scrollBy" [toJSVal option]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollBy Mozilla Window.scrollBy documentation> 
scrollBy :: (MonadDOM m) => Window -> Double -> Double -> m ()
scrollBy self x y
  = liftDOM (void (self ^. jsf "scrollBy" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.getSelection Mozilla Window.getSelection documentation> 
getSelection :: (MonadDOM m) => Window -> m (Maybe Selection)
getSelection self
  = liftDOM ((self ^. jsf "getSelection" ()) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.getSelection Mozilla Window.getSelection documentation> 
getSelection_ :: (MonadDOM m) => Window -> m ()
getSelection_ self = liftDOM (void (self ^. jsf "getSelection" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.getSelection Mozilla Window.getSelection documentation> 
getSelectionUnsafe ::
                   (MonadDOM m, HasCallStack) => Window -> m Selection
getSelectionUnsafe self
  = liftDOM
      (((self ^. jsf "getSelection" ()) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.getSelection Mozilla Window.getSelection documentation> 
getSelectionUnchecked :: (MonadDOM m) => Window -> m Selection
getSelectionUnchecked self
  = liftDOM ((self ^. jsf "getSelection" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.find Mozilla Window.find documentation> 
find ::
     (MonadDOM m, ToJSString string) =>
       Window ->
         Maybe string ->
           Bool -> Bool -> Bool -> Bool -> Bool -> Bool -> m Bool
find self string caseSensitive backwards wrap wholeWord
  searchInFrames showDialog
  = liftDOM
      ((self ^. jsf "find"
          [toJSVal string, toJSVal caseSensitive, toJSVal backwards,
           toJSVal wrap, toJSVal wholeWord, toJSVal searchInFrames,
           toJSVal showDialog])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.find Mozilla Window.find documentation> 
find_ ::
      (MonadDOM m, ToJSString string) =>
        Window ->
          Maybe string ->
            Bool -> Bool -> Bool -> Bool -> Bool -> Bool -> m ()
find_ self string caseSensitive backwards wrap wholeWord
  searchInFrames showDialog
  = liftDOM
      (void
         (self ^. jsf "find"
            [toJSVal string, toJSVal caseSensitive, toJSVal backwards,
             toJSVal wrap, toJSVal wholeWord, toJSVal searchInFrames,
             toJSVal showDialog]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitRequestAnimationFrame Mozilla Window.webkitRequestAnimationFrame documentation> 
webkitRequestAnimationFrame ::
                            (MonadDOM m) => Window -> RequestAnimationFrameCallback -> m Int
webkitRequestAnimationFrame self callback
  = liftDOM
      (round <$>
         ((self ^. jsf "webkitRequestAnimationFrame" [toJSVal callback]) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitRequestAnimationFrame Mozilla Window.webkitRequestAnimationFrame documentation> 
webkitRequestAnimationFrame_ ::
                             (MonadDOM m) => Window -> RequestAnimationFrameCallback -> m ()
webkitRequestAnimationFrame_ self callback
  = liftDOM
      (void
         (self ^. jsf "webkitRequestAnimationFrame" [toJSVal callback]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitCancelAnimationFrame Mozilla Window.webkitCancelAnimationFrame documentation> 
webkitCancelAnimationFrame :: (MonadDOM m) => Window -> Int -> m ()
webkitCancelAnimationFrame self id
  = liftDOM
      (void (self ^. jsf "webkitCancelAnimationFrame" [toJSVal id]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitCancelRequestAnimationFrame Mozilla Window.webkitCancelRequestAnimationFrame documentation> 
webkitCancelRequestAnimationFrame ::
                                  (MonadDOM m) => Window -> Int -> m ()
webkitCancelRequestAnimationFrame self id
  = liftDOM
      (void
         (self ^. jsf "webkitCancelRequestAnimationFrame" [toJSVal id]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.getMatchedCSSRules Mozilla Window.getMatchedCSSRules documentation> 
getMatchedCSSRules ::
                   (MonadDOM m, IsElement element, ToJSString pseudoElement) =>
                     Window -> Maybe element -> Maybe pseudoElement -> m CSSRuleList
getMatchedCSSRules self element pseudoElement
  = liftDOM
      ((self ^. jsf "getMatchedCSSRules"
          [toJSVal element, toJSVal pseudoElement])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.getMatchedCSSRules Mozilla Window.getMatchedCSSRules documentation> 
getMatchedCSSRules_ ::
                    (MonadDOM m, IsElement element, ToJSString pseudoElement) =>
                      Window -> Maybe element -> Maybe pseudoElement -> m ()
getMatchedCSSRules_ self element pseudoElement
  = liftDOM
      (void
         (self ^. jsf "getMatchedCSSRules"
            [toJSVal element, toJSVal pseudoElement]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.showModalDialog Mozilla Window.showModalDialog documentation> 
showModalDialog ::
                (MonadDOM m, ToJSString url, ToJSVal dialogArgs,
                 ToJSString featureArgs) =>
                  Window -> url -> Maybe dialogArgs -> Maybe featureArgs -> m JSVal
showModalDialog self url dialogArgs featureArgs
  = liftDOM
      ((self ^. jsf "showModalDialog"
          [toJSVal url, toJSVal dialogArgs, toJSVal featureArgs])
         >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.showModalDialog Mozilla Window.showModalDialog documentation> 
showModalDialog_ ::
                 (MonadDOM m, ToJSString url, ToJSVal dialogArgs,
                  ToJSString featureArgs) =>
                   Window -> url -> Maybe dialogArgs -> Maybe featureArgs -> m ()
showModalDialog_ self url dialogArgs featureArgs
  = liftDOM
      (void
         (self ^. jsf "showModalDialog"
            [toJSVal url, toJSVal dialogArgs, toJSVal featureArgs]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitConvertPointFromPageToNode Mozilla Window.webkitConvertPointFromPageToNode documentation> 
webkitConvertPointFromPageToNode ::
                                 (MonadDOM m, IsNode node) =>
                                   Window -> Maybe node -> Maybe WebKitPoint -> m WebKitPoint
webkitConvertPointFromPageToNode self node p
  = liftDOM
      ((self ^. jsf "webkitConvertPointFromPageToNode"
          [toJSVal node, toJSVal p])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitConvertPointFromPageToNode Mozilla Window.webkitConvertPointFromPageToNode documentation> 
webkitConvertPointFromPageToNode_ ::
                                  (MonadDOM m, IsNode node) =>
                                    Window -> Maybe node -> Maybe WebKitPoint -> m ()
webkitConvertPointFromPageToNode_ self node p
  = liftDOM
      (void
         (self ^. jsf "webkitConvertPointFromPageToNode"
            [toJSVal node, toJSVal p]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitConvertPointFromNodeToPage Mozilla Window.webkitConvertPointFromNodeToPage documentation> 
webkitConvertPointFromNodeToPage ::
                                 (MonadDOM m, IsNode node) =>
                                   Window -> Maybe node -> Maybe WebKitPoint -> m WebKitPoint
webkitConvertPointFromNodeToPage self node p
  = liftDOM
      ((self ^. jsf "webkitConvertPointFromNodeToPage"
          [toJSVal node, toJSVal p])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitConvertPointFromNodeToPage Mozilla Window.webkitConvertPointFromNodeToPage documentation> 
webkitConvertPointFromNodeToPage_ ::
                                  (MonadDOM m, IsNode node) =>
                                    Window -> Maybe node -> Maybe WebKitPoint -> m ()
webkitConvertPointFromNodeToPage_ self node p
  = liftDOM
      (void
         (self ^. jsf "webkitConvertPointFromNodeToPage"
            [toJSVal node, toJSVal p]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.collectMatchingElementsInFlatTree Mozilla Window.collectMatchingElementsInFlatTree documentation> 
collectMatchingElementsInFlatTree ::
                                  (MonadDOM m, IsNode scope, ToJSString selectors) =>
                                    Window -> scope -> selectors -> m NodeList
collectMatchingElementsInFlatTree self scope selectors
  = liftDOM
      ((self ^. jsf "collectMatchingElementsInFlatTree"
          [toJSVal scope, toJSVal selectors])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.collectMatchingElementsInFlatTree Mozilla Window.collectMatchingElementsInFlatTree documentation> 
collectMatchingElementsInFlatTree_ ::
                                   (MonadDOM m, IsNode scope, ToJSString selectors) =>
                                     Window -> scope -> selectors -> m ()
collectMatchingElementsInFlatTree_ self scope selectors
  = liftDOM
      (void
         (self ^. jsf "collectMatchingElementsInFlatTree"
            [toJSVal scope, toJSVal selectors]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.matchingElementInFlatTree Mozilla Window.matchingElementInFlatTree documentation> 
matchingElementInFlatTree ::
                          (MonadDOM m, IsNode scope, ToJSString selectors) =>
                            Window -> scope -> selectors -> m (Maybe Element)
matchingElementInFlatTree self scope selectors
  = liftDOM
      ((self ^. jsf "matchingElementInFlatTree"
          [toJSVal scope, toJSVal selectors])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.matchingElementInFlatTree Mozilla Window.matchingElementInFlatTree documentation> 
matchingElementInFlatTree_ ::
                           (MonadDOM m, IsNode scope, ToJSString selectors) =>
                             Window -> scope -> selectors -> m ()
matchingElementInFlatTree_ self scope selectors
  = liftDOM
      (void
         (self ^. jsf "matchingElementInFlatTree"
            [toJSVal scope, toJSVal selectors]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.matchingElementInFlatTree Mozilla Window.matchingElementInFlatTree documentation> 
matchingElementInFlatTreeUnsafe ::
                                (MonadDOM m, IsNode scope, ToJSString selectors, HasCallStack) =>
                                  Window -> scope -> selectors -> m Element
matchingElementInFlatTreeUnsafe self scope selectors
  = liftDOM
      (((self ^. jsf "matchingElementInFlatTree"
           [toJSVal scope, toJSVal selectors])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.matchingElementInFlatTree Mozilla Window.matchingElementInFlatTree documentation> 
matchingElementInFlatTreeUnchecked ::
                                   (MonadDOM m, IsNode scope, ToJSString selectors) =>
                                     Window -> scope -> selectors -> m Element
matchingElementInFlatTreeUnchecked self scope selectors
  = liftDOM
      ((self ^. jsf "matchingElementInFlatTree"
          [toJSVal scope, toJSVal selectors])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.indexedDB Mozilla Window.indexedDB documentation> 
getIndexedDB :: (MonadDOM m) => Window -> m IDBFactory
getIndexedDB self
  = liftDOM ((self ^. js "indexedDB") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitIndexedDB Mozilla Window.webkitIndexedDB documentation> 
getWebkitIndexedDB :: (MonadDOM m) => Window -> m IDBFactory
getWebkitIndexedDB self
  = liftDOM ((self ^. js "webkitIndexedDB") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitStorageInfo Mozilla Window.webkitStorageInfo documentation> 
getWebkitStorageInfo :: (MonadDOM m) => Window -> m StorageInfo
getWebkitStorageInfo self
  = liftDOM ((self ^. js "webkitStorageInfo") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.speechSynthesis Mozilla Window.speechSynthesis documentation> 
getSpeechSynthesis :: (MonadDOM m) => Window -> m SpeechSynthesis
getSpeechSynthesis self
  = liftDOM ((self ^. js "speechSynthesis") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.window Mozilla Window.window documentation> 
getWindow :: (MonadDOM m) => Window -> m Window
getWindow self
  = liftDOM ((self ^. js "window") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.self Mozilla Window.self documentation> 
getSelf :: (MonadDOM m) => Window -> m Window
getSelf self = liftDOM ((self ^. js "self") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.document Mozilla Window.document documentation> 
getDocument :: (MonadDOM m) => Window -> m Document
getDocument self
  = liftDOM ((self ^. js "document") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.name Mozilla Window.name documentation> 
setName :: (MonadDOM m, ToJSString val) => Window -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.name Mozilla Window.name documentation> 
getName :: (MonadDOM m, FromJSString result) => Window -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.location Mozilla Window.location documentation> 
getLocation :: (MonadDOM m) => Window -> m Location
getLocation self
  = liftDOM ((self ^. js "location") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.history Mozilla Window.history documentation> 
getHistory :: (MonadDOM m) => Window -> m History
getHistory self
  = liftDOM ((self ^. js "history") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.customElements Mozilla Window.customElements documentation> 
getCustomElements ::
                  (MonadDOM m) => Window -> m CustomElementRegistry
getCustomElements self
  = liftDOM ((self ^. js "customElements") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.locationbar Mozilla Window.locationbar documentation> 
getLocationbar :: (MonadDOM m) => Window -> m BarProp
getLocationbar self
  = liftDOM ((self ^. js "locationbar") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.menubar Mozilla Window.menubar documentation> 
getMenubar :: (MonadDOM m) => Window -> m BarProp
getMenubar self
  = liftDOM ((self ^. js "menubar") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.personalbar Mozilla Window.personalbar documentation> 
getPersonalbar :: (MonadDOM m) => Window -> m BarProp
getPersonalbar self
  = liftDOM ((self ^. js "personalbar") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollbars Mozilla Window.scrollbars documentation> 
getScrollbars :: (MonadDOM m) => Window -> m BarProp
getScrollbars self
  = liftDOM ((self ^. js "scrollbars") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.statusbar Mozilla Window.statusbar documentation> 
getStatusbar :: (MonadDOM m) => Window -> m BarProp
getStatusbar self
  = liftDOM ((self ^. js "statusbar") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.toolbar Mozilla Window.toolbar documentation> 
getToolbar :: (MonadDOM m) => Window -> m BarProp
getToolbar self
  = liftDOM ((self ^. js "toolbar") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.status Mozilla Window.status documentation> 
setStatus :: (MonadDOM m, ToJSString val) => Window -> val -> m ()
setStatus self val = liftDOM (self ^. jss "status" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.status Mozilla Window.status documentation> 
getStatus ::
          (MonadDOM m, FromJSString result) => Window -> m result
getStatus self
  = liftDOM ((self ^. js "status") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.closed Mozilla Window.closed documentation> 
getClosed :: (MonadDOM m) => Window -> m Bool
getClosed self = liftDOM ((self ^. js "closed") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.frames Mozilla Window.frames documentation> 
getFrames :: (MonadDOM m) => Window -> m Window
getFrames self
  = liftDOM ((self ^. js "frames") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.length Mozilla Window.length documentation> 
getLength :: (MonadDOM m) => Window -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.top Mozilla Window.top documentation> 
getTop :: (MonadDOM m) => Window -> m (Maybe Window)
getTop self = liftDOM ((self ^. js "top") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.top Mozilla Window.top documentation> 
getTopUnsafe :: (MonadDOM m, HasCallStack) => Window -> m Window
getTopUnsafe self
  = liftDOM
      (((self ^. js "top") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.top Mozilla Window.top documentation> 
getTopUnchecked :: (MonadDOM m) => Window -> m Window
getTopUnchecked self
  = liftDOM ((self ^. js "top") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.opener Mozilla Window.opener documentation> 
getOpener :: (MonadDOM m) => Window -> m (Maybe Window)
getOpener self = liftDOM ((self ^. js "opener") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.opener Mozilla Window.opener documentation> 
getOpenerUnsafe :: (MonadDOM m, HasCallStack) => Window -> m Window
getOpenerUnsafe self
  = liftDOM
      (((self ^. js "opener") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.opener Mozilla Window.opener documentation> 
getOpenerUnchecked :: (MonadDOM m) => Window -> m Window
getOpenerUnchecked self
  = liftDOM ((self ^. js "opener") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.parent Mozilla Window.parent documentation> 
getParent :: (MonadDOM m) => Window -> m (Maybe Window)
getParent self = liftDOM ((self ^. js "parent") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.parent Mozilla Window.parent documentation> 
getParentUnsafe :: (MonadDOM m, HasCallStack) => Window -> m Window
getParentUnsafe self
  = liftDOM
      (((self ^. js "parent") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.parent Mozilla Window.parent documentation> 
getParentUnchecked :: (MonadDOM m) => Window -> m Window
getParentUnchecked self
  = liftDOM ((self ^. js "parent") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.frameElement Mozilla Window.frameElement documentation> 
getFrameElement :: (MonadDOM m) => Window -> m (Maybe Element)
getFrameElement self
  = liftDOM ((self ^. js "frameElement") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.frameElement Mozilla Window.frameElement documentation> 
getFrameElementUnsafe ::
                      (MonadDOM m, HasCallStack) => Window -> m Element
getFrameElementUnsafe self
  = liftDOM
      (((self ^. js "frameElement") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.frameElement Mozilla Window.frameElement documentation> 
getFrameElementUnchecked :: (MonadDOM m) => Window -> m Element
getFrameElementUnchecked self
  = liftDOM ((self ^. js "frameElement") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.navigator Mozilla Window.navigator documentation> 
getNavigator :: (MonadDOM m) => Window -> m Navigator
getNavigator self
  = liftDOM ((self ^. js "navigator") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.applicationCache Mozilla Window.applicationCache documentation> 
getApplicationCache :: (MonadDOM m) => Window -> m ApplicationCache
getApplicationCache self
  = liftDOM ((self ^. js "applicationCache") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.sessionStorage Mozilla Window.sessionStorage documentation> 
getSessionStorage :: (MonadDOM m) => Window -> m Storage
getSessionStorage self
  = liftDOM ((self ^. js "sessionStorage") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.localStorage Mozilla Window.localStorage documentation> 
getLocalStorage :: (MonadDOM m) => Window -> m Storage
getLocalStorage self
  = liftDOM ((self ^. js "localStorage") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screen Mozilla Window.screen documentation> 
getScreen :: (MonadDOM m) => Window -> m Screen
getScreen self
  = liftDOM ((self ^. js "screen") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.innerHeight Mozilla Window.innerHeight documentation> 
getInnerHeight :: (MonadDOM m) => Window -> m Int
getInnerHeight self
  = liftDOM (round <$> ((self ^. js "innerHeight") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.innerWidth Mozilla Window.innerWidth documentation> 
getInnerWidth :: (MonadDOM m) => Window -> m Int
getInnerWidth self
  = liftDOM (round <$> ((self ^. js "innerWidth") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollX Mozilla Window.scrollX documentation> 
getScrollX :: (MonadDOM m) => Window -> m Double
getScrollX self = liftDOM ((self ^. js "scrollX") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.pageXOffset Mozilla Window.pageXOffset documentation> 
getPageXOffset :: (MonadDOM m) => Window -> m Double
getPageXOffset self
  = liftDOM ((self ^. js "pageXOffset") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollY Mozilla Window.scrollY documentation> 
getScrollY :: (MonadDOM m) => Window -> m Double
getScrollY self = liftDOM ((self ^. js "scrollY") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.pageYOffset Mozilla Window.pageYOffset documentation> 
getPageYOffset :: (MonadDOM m) => Window -> m Double
getPageYOffset self
  = liftDOM ((self ^. js "pageYOffset") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenX Mozilla Window.screenX documentation> 
getScreenX :: (MonadDOM m) => Window -> m Int
getScreenX self
  = liftDOM (round <$> ((self ^. js "screenX") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenY Mozilla Window.screenY documentation> 
getScreenY :: (MonadDOM m) => Window -> m Int
getScreenY self
  = liftDOM (round <$> ((self ^. js "screenY") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.outerWidth Mozilla Window.outerWidth documentation> 
getOuterWidth :: (MonadDOM m) => Window -> m Int
getOuterWidth self
  = liftDOM (round <$> ((self ^. js "outerWidth") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.outerHeight Mozilla Window.outerHeight documentation> 
getOuterHeight :: (MonadDOM m) => Window -> m Int
getOuterHeight self
  = liftDOM (round <$> ((self ^. js "outerHeight") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.devicePixelRatio Mozilla Window.devicePixelRatio documentation> 
getDevicePixelRatio :: (MonadDOM m) => Window -> m Double
getDevicePixelRatio self
  = liftDOM ((self ^. js "devicePixelRatio") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.orientation Mozilla Window.orientation documentation> 
getOrientation :: (MonadDOM m) => Window -> m Int
getOrientation self
  = liftDOM (round <$> ((self ^. js "orientation") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.event Mozilla Window.event documentation> 
getEvent :: (MonadDOM m) => Window -> m Event
getEvent self
  = liftDOM ((self ^. js "event") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.defaultStatus Mozilla Window.defaultStatus documentation> 
setDefaultStatus ::
                 (MonadDOM m, ToJSString val) => Window -> val -> m ()
setDefaultStatus self val
  = liftDOM (self ^. jss "defaultStatus" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.defaultStatus Mozilla Window.defaultStatus documentation> 
getDefaultStatus ::
                 (MonadDOM m, FromJSString result) => Window -> m result
getDefaultStatus self
  = liftDOM ((self ^. js "defaultStatus") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.defaultstatus Mozilla Window.defaultstatus documentation> 
setDefaultstatus ::
                 (MonadDOM m, ToJSString val) => Window -> val -> m ()
setDefaultstatus self val
  = liftDOM (self ^. jss "defaultstatus" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.defaultstatus Mozilla Window.defaultstatus documentation> 
getDefaultstatus ::
                 (MonadDOM m, FromJSString result) => Window -> m result
getDefaultstatus self
  = liftDOM ((self ^. js "defaultstatus") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.offscreenBuffering Mozilla Window.offscreenBuffering documentation> 
getOffscreenBuffering :: (MonadDOM m) => Window -> m Bool
getOffscreenBuffering self
  = liftDOM ((self ^. js "offscreenBuffering") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenLeft Mozilla Window.screenLeft documentation> 
getScreenLeft :: (MonadDOM m) => Window -> m Int
getScreenLeft self
  = liftDOM (round <$> ((self ^. js "screenLeft") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenTop Mozilla Window.screenTop documentation> 
getScreenTop :: (MonadDOM m) => Window -> m Int
getScreenTop self
  = liftDOM (round <$> ((self ^. js "screenTop") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.clientInformation Mozilla Window.clientInformation documentation> 
getClientInformation :: (MonadDOM m) => Window -> m Navigator
getClientInformation self
  = liftDOM ((self ^. js "clientInformation") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.styleMedia Mozilla Window.styleMedia documentation> 
getStyleMedia :: (MonadDOM m) => Window -> m StyleMedia
getStyleMedia self
  = liftDOM ((self ^. js "styleMedia") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ongesturechange Mozilla Window.ongesturechange documentation> 
gestureChange :: EventName Window UIEvent
gestureChange = unsafeEventName (toJSString "gesturechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ongestureend Mozilla Window.ongestureend documentation> 
gestureEnd :: EventName Window UIEvent
gestureEnd = unsafeEventName (toJSString "gestureend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ongesturestart Mozilla Window.ongesturestart documentation> 
gestureStart :: EventName Window UIEvent
gestureStart = unsafeEventName (toJSString "gesturestart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondevicemotion Mozilla Window.ondevicemotion documentation> 
deviceMotion :: EventName Window DeviceMotionEvent
deviceMotion = unsafeEventName (toJSString "devicemotion")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondeviceorientation Mozilla Window.ondeviceorientation documentation> 
deviceOrientation :: EventName Window DeviceOrientationEvent
deviceOrientation
  = unsafeEventName (toJSString "deviceorientation")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitdeviceproximity Mozilla Window.onwebkitdeviceproximity documentation> 
webKitDeviceProximity :: EventName Window DeviceProximityEvent
webKitDeviceProximity
  = unsafeEventName (toJSString "webkitdeviceproximity")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitanimationend Mozilla Window.onwebkitanimationend documentation> 
webKitAnimationEnd :: EventName Window AnimationEvent
webKitAnimationEnd
  = unsafeEventName (toJSString "webkitanimationend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitanimationiteration Mozilla Window.onwebkitanimationiteration documentation> 
webKitAnimationIteration :: EventName Window AnimationEvent
webKitAnimationIteration
  = unsafeEventName (toJSString "webkitanimationiteration")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitanimationstart Mozilla Window.onwebkitanimationstart documentation> 
webKitAnimationStart :: EventName Window AnimationEvent
webKitAnimationStart
  = unsafeEventName (toJSString "webkitanimationstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkittransitionend Mozilla Window.onwebkittransitionend documentation> 
webKitTransitionEnd :: EventName Window TransitionEvent
webKitTransitionEnd
  = unsafeEventName (toJSString "webkittransitionend")
