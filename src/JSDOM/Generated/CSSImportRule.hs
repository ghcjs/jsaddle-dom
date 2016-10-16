{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CSSImportRule
       (getHref, getHrefUnsafe, getHrefUnchecked, getMedia,
        getMediaUnsafe, getMediaUnchecked, getStyleSheet,
        getStyleSheetUnsafe, getStyleSheetUnchecked, CSSImportRule(..),
        gTypeCSSImportRule)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.href Mozilla CSSImportRule.href documentation> 
getHref ::
        (MonadDOM m, FromJSString result) =>
          CSSImportRule -> m (Maybe result)
getHref self = liftDOM ((self ^. js "href") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.href Mozilla CSSImportRule.href documentation> 
getHrefUnsafe ::
              (MonadDOM m, HasCallStack, FromJSString result) =>
                CSSImportRule -> m result
getHrefUnsafe self
  = liftDOM
      (((self ^. js "href") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.href Mozilla CSSImportRule.href documentation> 
getHrefUnchecked ::
                 (MonadDOM m, FromJSString result) => CSSImportRule -> m result
getHrefUnchecked self
  = liftDOM ((self ^. js "href") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.media Mozilla CSSImportRule.media documentation> 
getMedia :: (MonadDOM m) => CSSImportRule -> m (Maybe MediaList)
getMedia self = liftDOM ((self ^. js "media") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.media Mozilla CSSImportRule.media documentation> 
getMediaUnsafe ::
               (MonadDOM m, HasCallStack) => CSSImportRule -> m MediaList
getMediaUnsafe self
  = liftDOM
      (((self ^. js "media") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.media Mozilla CSSImportRule.media documentation> 
getMediaUnchecked :: (MonadDOM m) => CSSImportRule -> m MediaList
getMediaUnchecked self
  = liftDOM ((self ^. js "media") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.styleSheet Mozilla CSSImportRule.styleSheet documentation> 
getStyleSheet ::
              (MonadDOM m) => CSSImportRule -> m (Maybe CSSStyleSheet)
getStyleSheet self
  = liftDOM ((self ^. js "styleSheet") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.styleSheet Mozilla CSSImportRule.styleSheet documentation> 
getStyleSheetUnsafe ::
                    (MonadDOM m, HasCallStack) => CSSImportRule -> m CSSStyleSheet
getStyleSheetUnsafe self
  = liftDOM
      (((self ^. js "styleSheet") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.styleSheet Mozilla CSSImportRule.styleSheet documentation> 
getStyleSheetUnchecked ::
                       (MonadDOM m) => CSSImportRule -> m CSSStyleSheet
getStyleSheetUnchecked self
  = liftDOM ((self ^. js "styleSheet") >>= fromJSValUnchecked)
