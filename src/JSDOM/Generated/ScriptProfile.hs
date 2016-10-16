{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ScriptProfile
       (getTitle, getUid, getRootNode, getRootNodeUnsafe,
        getRootNodeUnchecked, ScriptProfile(..), gTypeScriptProfile)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile.title Mozilla ScriptProfile.title documentation> 
getTitle ::
         (MonadDOM m, FromJSString result) => ScriptProfile -> m result
getTitle self
  = liftDOM ((self ^. js "title") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile.uid Mozilla ScriptProfile.uid documentation> 
getUid :: (MonadDOM m) => ScriptProfile -> m Word
getUid self
  = liftDOM (round <$> ((self ^. js "uid") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile.rootNode Mozilla ScriptProfile.rootNode documentation> 
getRootNode ::
            (MonadDOM m) => ScriptProfile -> m (Maybe ScriptProfileNode)
getRootNode self = liftDOM ((self ^. js "rootNode") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile.rootNode Mozilla ScriptProfile.rootNode documentation> 
getRootNodeUnsafe ::
                  (MonadDOM m, HasCallStack) => ScriptProfile -> m ScriptProfileNode
getRootNodeUnsafe self
  = liftDOM
      (((self ^. js "rootNode") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ScriptProfile.rootNode Mozilla ScriptProfile.rootNode documentation> 
getRootNodeUnchecked ::
                     (MonadDOM m) => ScriptProfile -> m ScriptProfileNode
getRootNodeUnchecked self
  = liftDOM ((self ^. js "rootNode") >>= fromJSValUnchecked)
