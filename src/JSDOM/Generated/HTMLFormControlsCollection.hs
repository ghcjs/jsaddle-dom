{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLFormControlsCollection
       (get, get_, getUnsafe, getUnchecked, namedItem, namedItem_,
        namedItemUnsafe, namedItemUnchecked,
        HTMLFormControlsCollection(..), gTypeHTMLFormControlsCollection)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.get Mozilla HTMLFormControlsCollection.get documentation> 
get ::
    (MonadDOM m) =>
      HTMLFormControlsCollection -> Word -> m (Maybe HTMLElement)
get self index
  = liftDOM ((self ^. jsf "get" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.get Mozilla HTMLFormControlsCollection.get documentation> 
get_ :: (MonadDOM m) => HTMLFormControlsCollection -> Word -> m ()
get_ self index
  = liftDOM (void (self ^. jsf "get" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.get Mozilla HTMLFormControlsCollection.get documentation> 
getUnsafe ::
          (MonadDOM m, HasCallStack) =>
            HTMLFormControlsCollection -> Word -> m HTMLElement
getUnsafe self index
  = liftDOM
      (((self ^. jsf "get" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.get Mozilla HTMLFormControlsCollection.get documentation> 
getUnchecked ::
             (MonadDOM m) => HTMLFormControlsCollection -> Word -> m HTMLElement
getUnchecked self index
  = liftDOM
      ((self ^. jsf "get" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.namedItem Mozilla HTMLFormControlsCollection.namedItem documentation> 
namedItem ::
          (MonadDOM m, ToJSString name) =>
            HTMLFormControlsCollection ->
              name -> m (Maybe RadioNodeListOrElement)
namedItem self name = liftDOM ((self ! name) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.namedItem Mozilla HTMLFormControlsCollection.namedItem documentation> 
namedItem_ ::
           (MonadDOM m, ToJSString name) =>
             HTMLFormControlsCollection -> name -> m ()
namedItem_ self name = liftDOM (void (self ! name))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.namedItem Mozilla HTMLFormControlsCollection.namedItem documentation> 
namedItemUnsafe ::
                (MonadDOM m, ToJSString name, HasCallStack) =>
                  HTMLFormControlsCollection -> name -> m RadioNodeListOrElement
namedItemUnsafe self name
  = liftDOM
      (((self ! name) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.namedItem Mozilla HTMLFormControlsCollection.namedItem documentation> 
namedItemUnchecked ::
                   (MonadDOM m, ToJSString name) =>
                     HTMLFormControlsCollection -> name -> m RadioNodeListOrElement
namedItemUnchecked self name
  = liftDOM ((self ! name) >>= fromJSValUnchecked)
