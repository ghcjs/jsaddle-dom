{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLTitleElement
       (setText, getText, getTextUnsafe, getTextUnchecked,
        HTMLTitleElement(..), gTypeHTMLTitleElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement.text Mozilla HTMLTitleElement.text documentation> 
setText ::
        (MonadDOM m, ToJSString val) =>
          HTMLTitleElement -> Maybe val -> m ()
setText self val = liftDOM (self ^. jss "text" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement.text Mozilla HTMLTitleElement.text documentation> 
getText ::
        (MonadDOM m, FromJSString result) =>
          HTMLTitleElement -> m (Maybe result)
getText self = liftDOM ((self ^. js "text") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement.text Mozilla HTMLTitleElement.text documentation> 
getTextUnsafe ::
              (MonadDOM m, HasCallStack, FromJSString result) =>
                HTMLTitleElement -> m result
getTextUnsafe self
  = liftDOM
      (((self ^. js "text") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement.text Mozilla HTMLTitleElement.text documentation> 
getTextUnchecked ::
                 (MonadDOM m, FromJSString result) => HTMLTitleElement -> m result
getTextUnchecked self
  = liftDOM ((self ^. js "text") >>= fromJSValUnchecked)
