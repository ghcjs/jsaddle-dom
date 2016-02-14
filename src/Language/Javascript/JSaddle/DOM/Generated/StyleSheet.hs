{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.StyleSheet
       (getType, setDisabled, getDisabled, getOwnerNode,
        getParentStyleSheet, getHref, getTitle, getMedia, StyleSheet,
        castToStyleSheet, gTypeStyleSheet, IsStyleSheet, toStyleSheet)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.type Mozilla StyleSheet.type documentation> 
getType ::
        (MonadDOM m, IsStyleSheet self, FromJSString result) =>
          self -> m (Maybe result)
getType self
  = liftDOM
      (((toStyleSheet self) ^. js "type") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.disabled Mozilla StyleSheet.disabled documentation> 
setDisabled ::
            (MonadDOM m, IsStyleSheet self) => self -> Bool -> m ()
setDisabled self val
  = liftDOM ((toStyleSheet self) ^. jss "disabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.disabled Mozilla StyleSheet.disabled documentation> 
getDisabled :: (MonadDOM m, IsStyleSheet self) => self -> m Bool
getDisabled self
  = liftDOM (((toStyleSheet self) ^. js "disabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.ownerNode Mozilla StyleSheet.ownerNode documentation> 
getOwnerNode ::
             (MonadDOM m, IsStyleSheet self) => self -> m (Maybe Node)
getOwnerNode self
  = liftDOM (((toStyleSheet self) ^. js "ownerNode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.parentStyleSheet Mozilla StyleSheet.parentStyleSheet documentation> 
getParentStyleSheet ::
                    (MonadDOM m, IsStyleSheet self) => self -> m (Maybe StyleSheet)
getParentStyleSheet self
  = liftDOM
      (((toStyleSheet self) ^. js "parentStyleSheet") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.href Mozilla StyleSheet.href documentation> 
getHref ::
        (MonadDOM m, IsStyleSheet self, FromJSString result) =>
          self -> m (Maybe result)
getHref self
  = liftDOM
      (((toStyleSheet self) ^. js "href") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.title Mozilla StyleSheet.title documentation> 
getTitle ::
         (MonadDOM m, IsStyleSheet self, FromJSString result) =>
           self -> m (Maybe result)
getTitle self
  = liftDOM
      (((toStyleSheet self) ^. js "title") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.media Mozilla StyleSheet.media documentation> 
getMedia ::
         (MonadDOM m, IsStyleSheet self) => self -> m (Maybe MediaList)
getMedia self
  = liftDOM (((toStyleSheet self) ^. js "media") >>= fromJSVal)