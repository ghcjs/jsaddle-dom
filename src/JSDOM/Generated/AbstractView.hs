{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.AbstractView
       (getDocument, getDocumentUnchecked, getStyleMedia,
        getStyleMediaUnchecked, AbstractView, castToAbstractView,
        gTypeAbstractView)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView.document Mozilla AbstractView.document documentation> 
getDocument :: (MonadDOM m) => AbstractView -> m (Maybe Document)
getDocument self = liftDOM ((self ^. js "document") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView.document Mozilla AbstractView.document documentation> 
getDocumentUnchecked :: (MonadDOM m) => AbstractView -> m Document
getDocumentUnchecked self
  = liftDOM ((self ^. js "document") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView.styleMedia Mozilla AbstractView.styleMedia documentation> 
getStyleMedia ::
              (MonadDOM m) => AbstractView -> m (Maybe StyleMedia)
getStyleMedia self
  = liftDOM ((self ^. js "styleMedia") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AbstractView.styleMedia Mozilla AbstractView.styleMedia documentation> 
getStyleMediaUnchecked ::
                       (MonadDOM m) => AbstractView -> m StyleMedia
getStyleMediaUnchecked self
  = liftDOM ((self ^. js "styleMedia") >>= fromJSValUnchecked)
