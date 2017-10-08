{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Text
       (newText, splitText, splitText_, getWholeText, Text(..), gTypeText,
        IsText, toText)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text Mozilla Text documentation> 
newText :: (MonadDOM m, ToJSString data') => Maybe data' -> m Text
newText data' = liftDOM (Text <$> new (jsg "Text") [toJSVal data'])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.splitText Mozilla Text.splitText documentation> 
splitText :: (MonadDOM m, IsText self) => self -> Word -> m Text
splitText self offset
  = liftDOM
      (((toText self) ^. jsf "splitText" [toJSVal offset]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.splitText Mozilla Text.splitText documentation> 
splitText_ :: (MonadDOM m, IsText self) => self -> Word -> m ()
splitText_ self offset
  = liftDOM
      (void ((toText self) ^. jsf "splitText" [toJSVal offset]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.wholeText Mozilla Text.wholeText documentation> 
getWholeText ::
             (MonadDOM m, IsText self, FromJSString result) => self -> m result
getWholeText self
  = liftDOM
      (((toText self) ^. js "wholeText") >>= fromJSValUnchecked)
