{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLTemplateElement
       (getContent, getContentUnsafe, getContentUnchecked,
        HTMLTemplateElement(..), gTypeHTMLTemplateElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement.content Mozilla HTMLTemplateElement.content documentation> 
getContent ::
           (MonadDOM m) => HTMLTemplateElement -> m (Maybe DocumentFragment)
getContent self = liftDOM ((self ^. js "content") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement.content Mozilla HTMLTemplateElement.content documentation> 
getContentUnsafe ::
                 (MonadDOM m, HasCallStack) =>
                   HTMLTemplateElement -> m DocumentFragment
getContentUnsafe self
  = liftDOM
      (((self ^. js "content") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTemplateElement.content Mozilla HTMLTemplateElement.content documentation> 
getContentUnchecked ::
                    (MonadDOM m) => HTMLTemplateElement -> m DocumentFragment
getContentUnchecked self
  = liftDOM ((self ^. js "content") >>= fromJSValUnchecked)
