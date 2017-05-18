{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLTrackElement
       (pattern NONE, pattern LOADING, pattern LOADED, pattern ERROR,
        setKind, getKind, setSrc, getSrc, setSrclang, getSrclang, setLabel,
        getLabel, setDefault, getDefault, getReadyState, getTrack,
        HTMLTrackElement(..), gTypeHTMLTrackElement)
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
pattern NONE = 0
pattern LOADING = 1
pattern LOADED = 2
pattern ERROR = 3

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.kind Mozilla HTMLTrackElement.kind documentation> 
setKind ::
        (MonadDOM m, ToJSString val) => HTMLTrackElement -> val -> m ()
setKind self val = liftDOM (self ^. jss "kind" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.kind Mozilla HTMLTrackElement.kind documentation> 
getKind ::
        (MonadDOM m, FromJSString result) => HTMLTrackElement -> m result
getKind self = liftDOM ((self ^. js "kind") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.src Mozilla HTMLTrackElement.src documentation> 
setSrc ::
       (MonadDOM m, ToJSString val) => HTMLTrackElement -> val -> m ()
setSrc self val = liftDOM (self ^. jss "src" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.src Mozilla HTMLTrackElement.src documentation> 
getSrc ::
       (MonadDOM m, FromJSString result) => HTMLTrackElement -> m result
getSrc self = liftDOM ((self ^. js "src") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.srclang Mozilla HTMLTrackElement.srclang documentation> 
setSrclang ::
           (MonadDOM m, ToJSString val) => HTMLTrackElement -> val -> m ()
setSrclang self val = liftDOM (self ^. jss "srclang" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.srclang Mozilla HTMLTrackElement.srclang documentation> 
getSrclang ::
           (MonadDOM m, FromJSString result) => HTMLTrackElement -> m result
getSrclang self
  = liftDOM ((self ^. js "srclang") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.label Mozilla HTMLTrackElement.label documentation> 
setLabel ::
         (MonadDOM m, ToJSString val) => HTMLTrackElement -> val -> m ()
setLabel self val = liftDOM (self ^. jss "label" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.label Mozilla HTMLTrackElement.label documentation> 
getLabel ::
         (MonadDOM m, FromJSString result) => HTMLTrackElement -> m result
getLabel self
  = liftDOM ((self ^. js "label") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.default Mozilla HTMLTrackElement.default documentation> 
setDefault :: (MonadDOM m) => HTMLTrackElement -> Bool -> m ()
setDefault self val = liftDOM (self ^. jss "default" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.default Mozilla HTMLTrackElement.default documentation> 
getDefault :: (MonadDOM m) => HTMLTrackElement -> m Bool
getDefault self = liftDOM ((self ^. js "default") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.readyState Mozilla HTMLTrackElement.readyState documentation> 
getReadyState :: (MonadDOM m) => HTMLTrackElement -> m Word
getReadyState self
  = liftDOM (round <$> ((self ^. js "readyState") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTrackElement.track Mozilla HTMLTrackElement.track documentation> 
getTrack :: (MonadDOM m) => HTMLTrackElement -> m TextTrack
getTrack self
  = liftDOM ((self ^. js "track") >>= fromJSValUnchecked)
