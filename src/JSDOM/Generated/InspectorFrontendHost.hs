{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.InspectorFrontendHost
       (loaded, closeWindow, bringToFront, setZoomFactor,
        inspectedURLChanged, requestSetDockSide, setAttachedWindowHeight,
        setAttachedWindowWidth, setToolbarHeight, moveWindowBy,
        localizedStringsURL, localizedStringsURL_, debuggableType,
        debuggableType_, copyText, openInNewTab, canSave, canSave_, save,
        append, close, platform, platform_, port, port_, showContextMenu,
        dispatchEventAsContextMenuEvent, sendMessageToBackend,
        unbufferedLog, isUnderTest, isUnderTest_, beep, canInspectWorkers,
        canInspectWorkers_, canSaveAs, canSaveAs_,
        InspectorFrontendHost(..), gTypeInspectorFrontendHost)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.loaded Mozilla InspectorFrontendHost.loaded documentation> 
loaded :: (MonadDOM m) => InspectorFrontendHost -> m ()
loaded self = liftDOM (void (self ^. jsf "loaded" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.closeWindow Mozilla InspectorFrontendHost.closeWindow documentation> 
closeWindow :: (MonadDOM m) => InspectorFrontendHost -> m ()
closeWindow self = liftDOM (void (self ^. jsf "closeWindow" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.bringToFront Mozilla InspectorFrontendHost.bringToFront documentation> 
bringToFront :: (MonadDOM m) => InspectorFrontendHost -> m ()
bringToFront self = liftDOM (void (self ^. jsf "bringToFront" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.setZoomFactor Mozilla InspectorFrontendHost.setZoomFactor documentation> 
setZoomFactor ::
              (MonadDOM m) => InspectorFrontendHost -> Float -> m ()
setZoomFactor self zoom
  = liftDOM (void (self ^. jsf "setZoomFactor" [toJSVal zoom]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.inspectedURLChanged Mozilla InspectorFrontendHost.inspectedURLChanged documentation> 
inspectedURLChanged ::
                    (MonadDOM m, ToJSString newURL) =>
                      InspectorFrontendHost -> newURL -> m ()
inspectedURLChanged self newURL
  = liftDOM
      (void (self ^. jsf "inspectedURLChanged" [toJSVal newURL]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.requestSetDockSide Mozilla InspectorFrontendHost.requestSetDockSide documentation> 
requestSetDockSide ::
                   (MonadDOM m, ToJSString side) =>
                     InspectorFrontendHost -> side -> m ()
requestSetDockSide self side
  = liftDOM (void (self ^. jsf "requestSetDockSide" [toJSVal side]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.setAttachedWindowHeight Mozilla InspectorFrontendHost.setAttachedWindowHeight documentation> 
setAttachedWindowHeight ::
                        (MonadDOM m) => InspectorFrontendHost -> Word -> m ()
setAttachedWindowHeight self height
  = liftDOM
      (void (self ^. jsf "setAttachedWindowHeight" [toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.setAttachedWindowWidth Mozilla InspectorFrontendHost.setAttachedWindowWidth documentation> 
setAttachedWindowWidth ::
                       (MonadDOM m) => InspectorFrontendHost -> Word -> m ()
setAttachedWindowWidth self width
  = liftDOM
      (void (self ^. jsf "setAttachedWindowWidth" [toJSVal width]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.setToolbarHeight Mozilla InspectorFrontendHost.setToolbarHeight documentation> 
setToolbarHeight ::
                 (MonadDOM m) => InspectorFrontendHost -> Float -> m ()
setToolbarHeight self height
  = liftDOM (void (self ^. jsf "setToolbarHeight" [toJSVal height]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.moveWindowBy Mozilla InspectorFrontendHost.moveWindowBy documentation> 
moveWindowBy ::
             (MonadDOM m) => InspectorFrontendHost -> Float -> Float -> m ()
moveWindowBy self x y
  = liftDOM
      (void (self ^. jsf "moveWindowBy" [toJSVal x, toJSVal y]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.localizedStringsURL Mozilla InspectorFrontendHost.localizedStringsURL documentation> 
localizedStringsURL ::
                    (MonadDOM m, FromJSString result) =>
                      InspectorFrontendHost -> m result
localizedStringsURL self
  = liftDOM
      ((self ^. jsf "localizedStringsURL" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.localizedStringsURL Mozilla InspectorFrontendHost.localizedStringsURL documentation> 
localizedStringsURL_ ::
                     (MonadDOM m) => InspectorFrontendHost -> m ()
localizedStringsURL_ self
  = liftDOM (void (self ^. jsf "localizedStringsURL" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.debuggableType Mozilla InspectorFrontendHost.debuggableType documentation> 
debuggableType ::
               (MonadDOM m, FromJSString result) =>
                 InspectorFrontendHost -> m result
debuggableType self
  = liftDOM
      ((self ^. jsf "debuggableType" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.debuggableType Mozilla InspectorFrontendHost.debuggableType documentation> 
debuggableType_ :: (MonadDOM m) => InspectorFrontendHost -> m ()
debuggableType_ self
  = liftDOM (void (self ^. jsf "debuggableType" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.copyText Mozilla InspectorFrontendHost.copyText documentation> 
copyText ::
         (MonadDOM m, ToJSString text) =>
           InspectorFrontendHost -> text -> m ()
copyText self text
  = liftDOM (void (self ^. jsf "copyText" [toJSVal text]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.openInNewTab Mozilla InspectorFrontendHost.openInNewTab documentation> 
openInNewTab ::
             (MonadDOM m, ToJSString url) =>
               InspectorFrontendHost -> url -> m ()
openInNewTab self url
  = liftDOM (void (self ^. jsf "openInNewTab" [toJSVal url]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.canSave Mozilla InspectorFrontendHost.canSave documentation> 
canSave :: (MonadDOM m) => InspectorFrontendHost -> m Bool
canSave self = liftDOM ((self ^. jsf "canSave" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.canSave Mozilla InspectorFrontendHost.canSave documentation> 
canSave_ :: (MonadDOM m) => InspectorFrontendHost -> m ()
canSave_ self = liftDOM (void (self ^. jsf "canSave" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.save Mozilla InspectorFrontendHost.save documentation> 
save ::
     (MonadDOM m, ToJSString url, ToJSString content) =>
       InspectorFrontendHost -> url -> content -> Bool -> Bool -> m ()
save self url content base64Encoded forceSaveAs
  = liftDOM
      (void
         (self ^. jsf "save"
            [toJSVal url, toJSVal content, toJSVal base64Encoded,
             toJSVal forceSaveAs]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.append Mozilla InspectorFrontendHost.append documentation> 
append ::
       (MonadDOM m, ToJSString url, ToJSString content) =>
         InspectorFrontendHost -> url -> content -> m ()
append self url content
  = liftDOM
      (void (self ^. jsf "append" [toJSVal url, toJSVal content]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.close Mozilla InspectorFrontendHost.close documentation> 
close ::
      (MonadDOM m, ToJSString url) =>
        InspectorFrontendHost -> url -> m ()
close self url = liftDOM (void (self ^. jsf "close" [toJSVal url]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.platform Mozilla InspectorFrontendHost.platform documentation> 
platform ::
         (MonadDOM m, FromJSString result) =>
           InspectorFrontendHost -> m result
platform self
  = liftDOM ((self ^. jsf "platform" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.platform Mozilla InspectorFrontendHost.platform documentation> 
platform_ :: (MonadDOM m) => InspectorFrontendHost -> m ()
platform_ self = liftDOM (void (self ^. jsf "platform" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.port Mozilla InspectorFrontendHost.port documentation> 
port ::
     (MonadDOM m, FromJSString result) =>
       InspectorFrontendHost -> m result
port self
  = liftDOM ((self ^. jsf "port" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.port Mozilla InspectorFrontendHost.port documentation> 
port_ :: (MonadDOM m) => InspectorFrontendHost -> m ()
port_ self = liftDOM (void (self ^. jsf "port" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.showContextMenu Mozilla InspectorFrontendHost.showContextMenu documentation> 
showContextMenu ::
                (MonadDOM m, IsMouseEvent event) =>
                  InspectorFrontendHost -> Maybe event -> JSVal -> m ()
showContextMenu self event items
  = liftDOM
      (void
         (self ^. jsf "showContextMenu" [toJSVal event, toJSVal items]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.dispatchEventAsContextMenuEvent Mozilla InspectorFrontendHost.dispatchEventAsContextMenuEvent documentation> 
dispatchEventAsContextMenuEvent ::
                                (MonadDOM m, IsEvent event) =>
                                  InspectorFrontendHost -> Maybe event -> m ()
dispatchEventAsContextMenuEvent self event
  = liftDOM
      (void
         (self ^. jsf "dispatchEventAsContextMenuEvent" [toJSVal event]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.sendMessageToBackend Mozilla InspectorFrontendHost.sendMessageToBackend documentation> 
sendMessageToBackend ::
                     (MonadDOM m, ToJSString message) =>
                       InspectorFrontendHost -> message -> m ()
sendMessageToBackend self message
  = liftDOM
      (void (self ^. jsf "sendMessageToBackend" [toJSVal message]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.unbufferedLog Mozilla InspectorFrontendHost.unbufferedLog documentation> 
unbufferedLog ::
              (MonadDOM m, ToJSString message) =>
                InspectorFrontendHost -> message -> m ()
unbufferedLog self message
  = liftDOM (void (self ^. jsf "unbufferedLog" [toJSVal message]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.isUnderTest Mozilla InspectorFrontendHost.isUnderTest documentation> 
isUnderTest :: (MonadDOM m) => InspectorFrontendHost -> m Bool
isUnderTest self
  = liftDOM ((self ^. jsf "isUnderTest" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.isUnderTest Mozilla InspectorFrontendHost.isUnderTest documentation> 
isUnderTest_ :: (MonadDOM m) => InspectorFrontendHost -> m ()
isUnderTest_ self = liftDOM (void (self ^. jsf "isUnderTest" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.beep Mozilla InspectorFrontendHost.beep documentation> 
beep :: (MonadDOM m) => InspectorFrontendHost -> m ()
beep self = liftDOM (void (self ^. jsf "beep" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.canInspectWorkers Mozilla InspectorFrontendHost.canInspectWorkers documentation> 
canInspectWorkers ::
                  (MonadDOM m) => InspectorFrontendHost -> m Bool
canInspectWorkers self
  = liftDOM ((self ^. jsf "canInspectWorkers" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.canInspectWorkers Mozilla InspectorFrontendHost.canInspectWorkers documentation> 
canInspectWorkers_ :: (MonadDOM m) => InspectorFrontendHost -> m ()
canInspectWorkers_ self
  = liftDOM (void (self ^. jsf "canInspectWorkers" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.canSaveAs Mozilla InspectorFrontendHost.canSaveAs documentation> 
canSaveAs :: (MonadDOM m) => InspectorFrontendHost -> m Bool
canSaveAs self
  = liftDOM ((self ^. jsf "canSaveAs" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.canSaveAs Mozilla InspectorFrontendHost.canSaveAs documentation> 
canSaveAs_ :: (MonadDOM m) => InspectorFrontendHost -> m ()
canSaveAs_ self = liftDOM (void (self ^. jsf "canSaveAs" ()))
