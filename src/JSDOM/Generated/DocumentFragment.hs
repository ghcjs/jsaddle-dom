{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DocumentFragment
       (newDocumentFragment, querySelector, querySelector_,
        querySelectorUnsafe, querySelectorUnchecked, querySelectorAll,
        querySelectorAll_, querySelectorAllUnsafe,
        querySelectorAllUnchecked, DocumentFragment(..),
        gTypeDocumentFragment)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment Mozilla DocumentFragment documentation> 
newDocumentFragment :: (MonadDOM m) => m DocumentFragment
newDocumentFragment
  = liftDOM (DocumentFragment <$> new (jsg "DocumentFragment") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelector Mozilla DocumentFragment.querySelector documentation> 
querySelector ::
              (MonadDOM m, ToJSString selectors) =>
                DocumentFragment -> selectors -> m (Maybe Element)
querySelector self selectors
  = liftDOM
      ((self ^. jsf "querySelector" [toJSVal selectors]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelector Mozilla DocumentFragment.querySelector documentation> 
querySelector_ ::
               (MonadDOM m, ToJSString selectors) =>
                 DocumentFragment -> selectors -> m ()
querySelector_ self selectors
  = liftDOM (void (self ^. jsf "querySelector" [toJSVal selectors]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelector Mozilla DocumentFragment.querySelector documentation> 
querySelectorUnsafe ::
                    (MonadDOM m, ToJSString selectors, HasCallStack) =>
                      DocumentFragment -> selectors -> m Element
querySelectorUnsafe self selectors
  = liftDOM
      (((self ^. jsf "querySelector" [toJSVal selectors]) >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelector Mozilla DocumentFragment.querySelector documentation> 
querySelectorUnchecked ::
                       (MonadDOM m, ToJSString selectors) =>
                         DocumentFragment -> selectors -> m Element
querySelectorUnchecked self selectors
  = liftDOM
      ((self ^. jsf "querySelector" [toJSVal selectors]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelectorAll Mozilla DocumentFragment.querySelectorAll documentation> 
querySelectorAll ::
                 (MonadDOM m, ToJSString selectors) =>
                   DocumentFragment -> selectors -> m (Maybe NodeList)
querySelectorAll self selectors
  = liftDOM
      ((self ^. jsf "querySelectorAll" [toJSVal selectors]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelectorAll Mozilla DocumentFragment.querySelectorAll documentation> 
querySelectorAll_ ::
                  (MonadDOM m, ToJSString selectors) =>
                    DocumentFragment -> selectors -> m ()
querySelectorAll_ self selectors
  = liftDOM
      (void (self ^. jsf "querySelectorAll" [toJSVal selectors]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelectorAll Mozilla DocumentFragment.querySelectorAll documentation> 
querySelectorAllUnsafe ::
                       (MonadDOM m, ToJSString selectors, HasCallStack) =>
                         DocumentFragment -> selectors -> m NodeList
querySelectorAllUnsafe self selectors
  = liftDOM
      (((self ^. jsf "querySelectorAll" [toJSVal selectors]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentFragment.querySelectorAll Mozilla DocumentFragment.querySelectorAll documentation> 
querySelectorAllUnchecked ::
                          (MonadDOM m, ToJSString selectors) =>
                            DocumentFragment -> selectors -> m NodeList
querySelectorAllUnchecked self selectors
  = liftDOM
      ((self ^. jsf "querySelectorAll" [toJSVal selectors]) >>=
         fromJSValUnchecked)
