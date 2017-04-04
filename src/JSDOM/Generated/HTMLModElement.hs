{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLModElement
       (setCite, getCite, setDateTime, getDateTime, HTMLModElement(..),
        gTypeHTMLModElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement.cite Mozilla HTMLModElement.cite documentation> 
setCite ::
        (MonadDOM m, ToJSString val) => HTMLModElement -> val -> m ()
setCite self val = liftDOM (self ^. jss "cite" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement.cite Mozilla HTMLModElement.cite documentation> 
getCite ::
        (MonadDOM m, FromJSString result) => HTMLModElement -> m result
getCite self = liftDOM ((self ^. js "cite") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement.dateTime Mozilla HTMLModElement.dateTime documentation> 
setDateTime ::
            (MonadDOM m, ToJSString val) => HTMLModElement -> val -> m ()
setDateTime self val
  = liftDOM (self ^. jss "dateTime" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement.dateTime Mozilla HTMLModElement.dateTime documentation> 
getDateTime ::
            (MonadDOM m, FromJSString result) => HTMLModElement -> m result
getDateTime self
  = liftDOM ((self ^. js "dateTime") >>= fromJSValUnchecked)
