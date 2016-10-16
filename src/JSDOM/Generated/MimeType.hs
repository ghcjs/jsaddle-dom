{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MimeType
       (getType, getSuffixes, getDescription, getEnabledPlugin,
        getEnabledPluginUnsafe, getEnabledPluginUnchecked, MimeType(..),
        gTypeMimeType)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.type Mozilla MimeType.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => MimeType -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.suffixes Mozilla MimeType.suffixes documentation> 
getSuffixes ::
            (MonadDOM m, FromJSString result) => MimeType -> m result
getSuffixes self
  = liftDOM ((self ^. js "suffixes") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.description Mozilla MimeType.description documentation> 
getDescription ::
               (MonadDOM m, FromJSString result) => MimeType -> m result
getDescription self
  = liftDOM ((self ^. js "description") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.enabledPlugin Mozilla MimeType.enabledPlugin documentation> 
getEnabledPlugin :: (MonadDOM m) => MimeType -> m (Maybe Plugin)
getEnabledPlugin self
  = liftDOM ((self ^. js "enabledPlugin") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.enabledPlugin Mozilla MimeType.enabledPlugin documentation> 
getEnabledPluginUnsafe ::
                       (MonadDOM m, HasCallStack) => MimeType -> m Plugin
getEnabledPluginUnsafe self
  = liftDOM
      (((self ^. js "enabledPlugin") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.enabledPlugin Mozilla MimeType.enabledPlugin documentation> 
getEnabledPluginUnchecked :: (MonadDOM m) => MimeType -> m Plugin
getEnabledPluginUnchecked self
  = liftDOM ((self ^. js "enabledPlugin") >>= fromJSValUnchecked)
