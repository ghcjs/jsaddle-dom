{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HashChangeEvent
       (initHashChangeEvent, getOldURL, getNewURL, HashChangeEvent(..),
        gTypeHashChangeEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent.initHashChangeEvent Mozilla HashChangeEvent.initHashChangeEvent documentation> 
initHashChangeEvent ::
                    (MonadDOM m, ToJSString type', ToJSString oldURL,
                     ToJSString newURL) =>
                      HashChangeEvent ->
                        type' -> Bool -> Bool -> oldURL -> newURL -> m ()
initHashChangeEvent self type' canBubble cancelable oldURL newURL
  = liftDOM
      (void
         (self ^. jsf "initHashChangeEvent"
            [toJSVal type', toJSVal canBubble, toJSVal cancelable,
             toJSVal oldURL, toJSVal newURL]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent.oldURL Mozilla HashChangeEvent.oldURL documentation> 
getOldURL ::
          (MonadDOM m, FromJSString result) => HashChangeEvent -> m result
getOldURL self
  = liftDOM ((self ^. js "oldURL") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent.newURL Mozilla HashChangeEvent.newURL documentation> 
getNewURL ::
          (MonadDOM m, FromJSString result) => HashChangeEvent -> m result
getNewURL self
  = liftDOM ((self ^. js "newURL") >>= fromJSValUnchecked)
