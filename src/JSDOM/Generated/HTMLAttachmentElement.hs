{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLAttachmentElement
       (setFile, getFile, getFileUnsafe, getFileUnchecked,
        HTMLAttachmentElement(..), gTypeHTMLAttachmentElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAttachmentElement.file Mozilla HTMLAttachmentElement.file documentation> 
setFile ::
        (MonadDOM m) => HTMLAttachmentElement -> Maybe File -> m ()
setFile self val = liftDOM (self ^. jss "file" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAttachmentElement.file Mozilla HTMLAttachmentElement.file documentation> 
getFile :: (MonadDOM m) => HTMLAttachmentElement -> m (Maybe File)
getFile self = liftDOM ((self ^. js "file") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAttachmentElement.file Mozilla HTMLAttachmentElement.file documentation> 
getFileUnsafe ::
              (MonadDOM m, HasCallStack) => HTMLAttachmentElement -> m File
getFileUnsafe self
  = liftDOM
      (((self ^. js "file") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAttachmentElement.file Mozilla HTMLAttachmentElement.file documentation> 
getFileUnchecked :: (MonadDOM m) => HTMLAttachmentElement -> m File
getFileUnchecked self
  = liftDOM ((self ^. js "file") >>= fromJSValUnchecked)
