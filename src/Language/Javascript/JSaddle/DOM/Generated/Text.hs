{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.Text
       (newText, splitText, replaceWholeText, getWholeText, Text,
        castToText, gTypeText, IsText, toText)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text Mozilla Text documentation> 
newText :: (MonadDOM m, ToJSString data') => data' -> m Text
newText data' = liftDOM (Text <$> new (jsg "Text") [toJSVal data'])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.splitText Mozilla Text.splitText documentation> 
splitText ::
          (MonadDOM m, IsText self) => self -> Word -> m (Maybe Text)
splitText self offset
  = liftDOM
      (((toText self) ^. jsf "splitText" [toJSVal offset]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.replaceWholeText Mozilla Text.replaceWholeText documentation> 
replaceWholeText ::
                 (MonadDOM m, IsText self, ToJSString content) =>
                   self -> content -> m (Maybe Text)
replaceWholeText self content
  = liftDOM
      (((toText self) ^. jsf "replaceWholeText" [toJSVal content]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.wholeText Mozilla Text.wholeText documentation> 
getWholeText ::
             (MonadDOM m, IsText self, FromJSString result) => self -> m result
getWholeText self
  = liftDOM
      (((toText self) ^. js "wholeText") >>= fromJSValUnchecked)