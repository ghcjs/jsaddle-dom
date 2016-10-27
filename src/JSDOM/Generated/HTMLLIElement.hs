{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLLIElement
       (setType, getType, setValue, getValue, HTMLLIElement(..),
        gTypeHTMLLIElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement.type Mozilla HTMLLIElement.type documentation> 
setType ::
        (MonadDOM m, ToJSString val) => HTMLLIElement -> val -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement.type Mozilla HTMLLIElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => HTMLLIElement -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement.value Mozilla HTMLLIElement.value documentation> 
setValue :: (MonadDOM m) => HTMLLIElement -> Int -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLIElement.value Mozilla HTMLLIElement.value documentation> 
getValue :: (MonadDOM m) => HTMLLIElement -> m Int
getValue self
  = liftDOM (round <$> ((self ^. js "value") >>= valToNumber))
