{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Text
       (newText, splitText, splitText_, splitTextUnsafe,
        splitTextUnchecked, replaceWholeText, replaceWholeText_,
        replaceWholeTextUnsafe, replaceWholeTextUnchecked, getWholeText,
        Text(..), gTypeText, IsText, toText)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text Mozilla Text documentation> 
newText :: (MonadDOM m, ToJSString data') => data' -> m Text
newText data' = liftDOM (Text <$> new (jsg "Text") [toJSVal data'])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.splitText Mozilla Text.splitText documentation> 
splitText ::
          (MonadDOM m, IsText self) => self -> Word -> m (Maybe Text)
splitText self offset
  = liftDOM
      (((toText self) ^. jsf "splitText" [toJSVal offset]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.splitText Mozilla Text.splitText documentation> 
splitText_ :: (MonadDOM m, IsText self) => self -> Word -> m ()
splitText_ self offset
  = liftDOM
      (void ((toText self) ^. jsf "splitText" [toJSVal offset]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.splitText Mozilla Text.splitText documentation> 
splitTextUnsafe ::
                (MonadDOM m, IsText self, HasCallStack) => self -> Word -> m Text
splitTextUnsafe self offset
  = liftDOM
      ((((toText self) ^. jsf "splitText" [toJSVal offset]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.splitText Mozilla Text.splitText documentation> 
splitTextUnchecked ::
                   (MonadDOM m, IsText self) => self -> Word -> m Text
splitTextUnchecked self offset
  = liftDOM
      (((toText self) ^. jsf "splitText" [toJSVal offset]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.replaceWholeText Mozilla Text.replaceWholeText documentation> 
replaceWholeText ::
                 (MonadDOM m, IsText self, ToJSString content) =>
                   self -> content -> m (Maybe Text)
replaceWholeText self content
  = liftDOM
      (((toText self) ^. jsf "replaceWholeText" [toJSVal content]) >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.replaceWholeText Mozilla Text.replaceWholeText documentation> 
replaceWholeText_ ::
                  (MonadDOM m, IsText self, ToJSString content) =>
                    self -> content -> m ()
replaceWholeText_ self content
  = liftDOM
      (void ((toText self) ^. jsf "replaceWholeText" [toJSVal content]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.replaceWholeText Mozilla Text.replaceWholeText documentation> 
replaceWholeTextUnsafe ::
                       (MonadDOM m, IsText self, ToJSString content, HasCallStack) =>
                         self -> content -> m Text
replaceWholeTextUnsafe self content
  = liftDOM
      ((((toText self) ^. jsf "replaceWholeText" [toJSVal content]) >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.replaceWholeText Mozilla Text.replaceWholeText documentation> 
replaceWholeTextUnchecked ::
                          (MonadDOM m, IsText self, ToJSString content) =>
                            self -> content -> m Text
replaceWholeTextUnchecked self content
  = liftDOM
      (((toText self) ^. jsf "replaceWholeText" [toJSVal content]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.wholeText Mozilla Text.wholeText documentation> 
getWholeText ::
             (MonadDOM m, IsText self, FromJSString result) => self -> m result
getWholeText self
  = liftDOM
      (((toText self) ^. js "wholeText") >>= fromJSValUnchecked)
