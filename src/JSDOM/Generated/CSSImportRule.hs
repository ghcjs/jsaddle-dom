{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CSSImportRule
       (getHref, getHrefUnchecked, getMedia, getMediaUnchecked,
        getStyleSheet, getStyleSheetUnchecked, CSSImportRule,
        castToCSSImportRule, gTypeCSSImportRule)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.href Mozilla CSSImportRule.href documentation> 
getHref ::
        (MonadDOM m, FromJSString result) =>
          CSSImportRule -> m (Maybe result)
getHref self = liftDOM ((self ^. js "href") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.href Mozilla CSSImportRule.href documentation> 
getHrefUnchecked ::
                 (MonadDOM m, FromJSString result) => CSSImportRule -> m result
getHrefUnchecked self
  = liftDOM ((self ^. js "href") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSImportRule.media Mozilla CSSImportRule.media documentation> 
getMedia :: (MonadDOM m) => CSSImportRule -> m (Maybe MediaList)
getMedia self = liftDOM ((self ^. js "media") >>= fromJSVal)

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
getStyleSheetUnchecked ::
                       (MonadDOM m) => CSSImportRule -> m CSSStyleSheet
getStyleSheetUnchecked self
  = liftDOM ((self ^. js "styleSheet") >>= fromJSValUnchecked)
