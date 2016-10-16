{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.KeyboardEvent
       (initKeyboardEvent, pattern DOM_KEY_LOCATION_STANDARD,
        pattern DOM_KEY_LOCATION_LEFT, pattern DOM_KEY_LOCATION_RIGHT,
        pattern DOM_KEY_LOCATION_NUMPAD, getKeyIdentifier, getLocation,
        getKeyLocation, getCtrlKey, getShiftKey, getAltKey, getMetaKey,
        getAltGraphKey, KeyboardEvent(..), gTypeKeyboardEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.initKeyboardEvent Mozilla KeyboardEvent.initKeyboardEvent documentation> 
initKeyboardEvent ::
                  (MonadDOM m, ToJSString type', ToJSString keyIdentifier) =>
                    KeyboardEvent ->
                      type' ->
                        Bool ->
                          Bool ->
                            Maybe Window ->
                              keyIdentifier ->
                                Word -> Bool -> Bool -> Bool -> Bool -> Bool -> m ()
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.keyIdentifier Mozilla KeyboardEvent.keyIdentifier documentation> 
getKeyIdentifier ::
                 (MonadDOM m, FromJSString result) => KeyboardEvent -> m result
getKeyIdentifier self
  = liftDOM ((self ^. js "keyIdentifier") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.location Mozilla KeyboardEvent.location documentation> 
getLocation :: (MonadDOM m) => KeyboardEvent -> m Word
getLocation self
  = liftDOM (round <$> ((self ^. js "location") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.keyLocation Mozilla KeyboardEvent.keyLocation documentation> 
getKeyLocation :: (MonadDOM m) => KeyboardEvent -> m Word
getKeyLocation self
  = liftDOM (round <$> ((self ^. js "keyLocation") >>= valToNumber))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.altGraphKey Mozilla KeyboardEvent.altGraphKey documentation> 
getAltGraphKey :: (MonadDOM m) => KeyboardEvent -> m Bool
getAltGraphKey self
  = liftDOM ((self ^. js "altGraphKey") >>= valToBool)
