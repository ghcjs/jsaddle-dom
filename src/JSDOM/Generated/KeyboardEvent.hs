{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.KeyboardEvent
       (newKeyboardEvent, getModifierState, getModifierState_,
        initKeyboardEvent, pattern DOM_KEY_LOCATION_STANDARD,
        pattern DOM_KEY_LOCATION_LEFT, pattern DOM_KEY_LOCATION_RIGHT,
        pattern DOM_KEY_LOCATION_NUMPAD, getKey, getCode, getLocation,
        getCtrlKey, getShiftKey, getAltKey, getMetaKey, getRepeat,
        getIsComposing, getKeyIdentifier, getKeyLocation, getAltGraphKey,
        getCharCode, getKeyCode, getWhich, KeyboardEvent(..),
        gTypeKeyboardEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent Mozilla KeyboardEvent documentation> 
newKeyboardEvent ::
                 (MonadDOM m, ToJSString type') =>
                   type' -> Maybe KeyboardEventInit -> m KeyboardEvent
newKeyboardEvent type' eventInitDict
  = liftDOM
      (KeyboardEvent <$>
         new (jsg "KeyboardEvent") [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.getModifierState Mozilla KeyboardEvent.getModifierState documentation> 
getModifierState ::
                 (MonadDOM m, ToJSString keyArg) =>
                   KeyboardEvent -> keyArg -> m Bool
getModifierState self keyArg
  = liftDOM
      ((self ^. jsf "getModifierState" [toJSVal keyArg]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.getModifierState Mozilla KeyboardEvent.getModifierState documentation> 
getModifierState_ ::
                  (MonadDOM m, ToJSString keyArg) => KeyboardEvent -> keyArg -> m ()
getModifierState_ self keyArg
  = liftDOM (void (self ^. jsf "getModifierState" [toJSVal keyArg]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.initKeyboardEvent Mozilla KeyboardEvent.initKeyboardEvent documentation> 
initKeyboardEvent ::
                  (MonadDOM m, ToJSString type', ToJSString keyIdentifier) =>
                    KeyboardEvent ->
                      Maybe type' ->
                        Bool ->
                          Bool ->
                            Maybe Window ->
                              Maybe keyIdentifier ->
                                Maybe Word -> Bool -> Bool -> Bool -> Bool -> Bool -> m ()
initKeyboardEvent self type' canBubble cancelable view
  keyIdentifier location ctrlKey altKey shiftKey metaKey altGraphKey
  = liftDOM
      (void
         (self ^. jsf "initKeyboardEvent"
            [toJSVal type', toJSVal canBubble, toJSVal cancelable,
             toJSVal view, toJSVal keyIdentifier, toJSVal location,
             toJSVal ctrlKey, toJSVal altKey, toJSVal shiftKey, toJSVal metaKey,
             toJSVal altGraphKey]))
pattern DOM_KEY_LOCATION_STANDARD = 0
pattern DOM_KEY_LOCATION_LEFT = 1
pattern DOM_KEY_LOCATION_RIGHT = 2
pattern DOM_KEY_LOCATION_NUMPAD = 3

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.key Mozilla KeyboardEvent.key documentation> 
getKey ::
       (MonadDOM m, FromJSString result) => KeyboardEvent -> m result
getKey self = liftDOM ((self ^. js "key") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.code Mozilla KeyboardEvent.code documentation> 
getCode ::
        (MonadDOM m, FromJSString result) => KeyboardEvent -> m result
getCode self = liftDOM ((self ^. js "code") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.location Mozilla KeyboardEvent.location documentation> 
getLocation :: (MonadDOM m) => KeyboardEvent -> m Word
getLocation self
  = liftDOM (round <$> ((self ^. js "location") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.ctrlKey Mozilla KeyboardEvent.ctrlKey documentation> 
getCtrlKey :: (MonadDOM m) => KeyboardEvent -> m Bool
getCtrlKey self = liftDOM ((self ^. js "ctrlKey") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.shiftKey Mozilla KeyboardEvent.shiftKey documentation> 
getShiftKey :: (MonadDOM m) => KeyboardEvent -> m Bool
getShiftKey self = liftDOM ((self ^. js "shiftKey") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.altKey Mozilla KeyboardEvent.altKey documentation> 
getAltKey :: (MonadDOM m) => KeyboardEvent -> m Bool
getAltKey self = liftDOM ((self ^. js "altKey") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.metaKey Mozilla KeyboardEvent.metaKey documentation> 
getMetaKey :: (MonadDOM m) => KeyboardEvent -> m Bool
getMetaKey self = liftDOM ((self ^. js "metaKey") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.repeat Mozilla KeyboardEvent.repeat documentation> 
getRepeat :: (MonadDOM m) => KeyboardEvent -> m Bool
getRepeat self = liftDOM ((self ^. js "repeat") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.isComposing Mozilla KeyboardEvent.isComposing documentation> 
getIsComposing :: (MonadDOM m) => KeyboardEvent -> m Bool
getIsComposing self
  = liftDOM ((self ^. js "isComposing") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.keyIdentifier Mozilla KeyboardEvent.keyIdentifier documentation> 
getKeyIdentifier ::
                 (MonadDOM m, FromJSString result) => KeyboardEvent -> m result
getKeyIdentifier self
  = liftDOM ((self ^. js "keyIdentifier") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.keyLocation Mozilla KeyboardEvent.keyLocation documentation> 
getKeyLocation :: (MonadDOM m) => KeyboardEvent -> m Word
getKeyLocation self
  = liftDOM (round <$> ((self ^. js "keyLocation") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.altGraphKey Mozilla KeyboardEvent.altGraphKey documentation> 
getAltGraphKey :: (MonadDOM m) => KeyboardEvent -> m Bool
getAltGraphKey self
  = liftDOM ((self ^. js "altGraphKey") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.charCode Mozilla KeyboardEvent.charCode documentation> 
getCharCode :: (MonadDOM m) => KeyboardEvent -> m Word
getCharCode self
  = liftDOM (round <$> ((self ^. js "charCode") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.keyCode Mozilla KeyboardEvent.keyCode documentation> 
getKeyCode :: (MonadDOM m) => KeyboardEvent -> m Word
getKeyCode self
  = liftDOM (round <$> ((self ^. js "keyCode") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.which Mozilla KeyboardEvent.which documentation> 
getWhich :: (MonadDOM m) => KeyboardEvent -> m Word
getWhich self
  = liftDOM (round <$> ((self ^. js "which") >>= valToNumber))
