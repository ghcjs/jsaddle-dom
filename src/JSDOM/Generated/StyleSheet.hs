{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.StyleSheet
       (getType, getTypeUnsafe, getTypeUnchecked, setDisabled,
        getDisabled, getOwnerNode, getParentStyleSheet, getHref,
        getHrefUnsafe, getHrefUnchecked, getTitle, getTitleUnsafe,
        getTitleUnchecked, getMedia, StyleSheet(..), gTypeStyleSheet,
        IsStyleSheet, toStyleSheet)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.type Mozilla StyleSheet.type documentation> 
getType ::
        (MonadDOM m, IsStyleSheet self, FromJSString result) =>
          self -> m (Maybe result)
getType self
  = liftDOM (((toStyleSheet self) ^. js "type") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.type Mozilla StyleSheet.type documentation> 
getTypeUnsafe ::
              (MonadDOM m, IsStyleSheet self, HasCallStack,
               FromJSString result) =>
                self -> m result
getTypeUnsafe self
  = liftDOM
      ((((toStyleSheet self) ^. js "type") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.type Mozilla StyleSheet.type documentation> 
getTypeUnchecked ::
                 (MonadDOM m, IsStyleSheet self, FromJSString result) =>
                   self -> m result
getTypeUnchecked self
  = liftDOM
      (((toStyleSheet self) ^. js "type") >>= fromJSValUnchecked)

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
getOwnerNode :: (MonadDOM m, IsStyleSheet self) => self -> m Node
getOwnerNode self
  = liftDOM
      (((toStyleSheet self) ^. js "ownerNode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.parentStyleSheet Mozilla StyleSheet.parentStyleSheet documentation> 
getParentStyleSheet ::
                    (MonadDOM m, IsStyleSheet self) => self -> m StyleSheet
getParentStyleSheet self
  = liftDOM
      (((toStyleSheet self) ^. js "parentStyleSheet") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.href Mozilla StyleSheet.href documentation> 
getHref ::
        (MonadDOM m, IsStyleSheet self, FromJSString result) =>
          self -> m (Maybe result)
getHref self
  = liftDOM (((toStyleSheet self) ^. js "href") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.href Mozilla StyleSheet.href documentation> 
getHrefUnsafe ::
              (MonadDOM m, IsStyleSheet self, HasCallStack,
               FromJSString result) =>
                self -> m result
getHrefUnsafe self
  = liftDOM
      ((((toStyleSheet self) ^. js "href") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.href Mozilla StyleSheet.href documentation> 
getHrefUnchecked ::
                 (MonadDOM m, IsStyleSheet self, FromJSString result) =>
                   self -> m result
getHrefUnchecked self
  = liftDOM
      (((toStyleSheet self) ^. js "href") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.title Mozilla StyleSheet.title documentation> 
getTitle ::
         (MonadDOM m, IsStyleSheet self, FromJSString result) =>
           self -> m (Maybe result)
getTitle self
  = liftDOM (((toStyleSheet self) ^. js "title") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.title Mozilla StyleSheet.title documentation> 
getTitleUnsafe ::
               (MonadDOM m, IsStyleSheet self, HasCallStack,
                FromJSString result) =>
                 self -> m result
getTitleUnsafe self
  = liftDOM
      ((((toStyleSheet self) ^. js "title") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.title Mozilla StyleSheet.title documentation> 
getTitleUnchecked ::
                  (MonadDOM m, IsStyleSheet self, FromJSString result) =>
                    self -> m result
getTitleUnchecked self
  = liftDOM
      (((toStyleSheet self) ^. js "title") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheet.media Mozilla StyleSheet.media documentation> 
getMedia :: (MonadDOM m, IsStyleSheet self) => self -> m MediaList
getMedia self
  = liftDOM
      (((toStyleSheet self) ^. js "media") >>= fromJSValUnchecked)
