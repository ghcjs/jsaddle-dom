{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaKeys
       (createSession, createSession_, setServerCertificate,
        setServerCertificate_, MediaKeys(..), gTypeMediaKeys)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.createSession Mozilla WebKitMediaKeys.createSession documentation> 
createSession ::
              (MonadDOM m) =>
                MediaKeys -> Maybe MediaKeySessionType -> m MediaKeySession
createSession self sessionType
  = liftDOM
      ((self ^. jsf "createSession" [toJSVal sessionType]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.createSession Mozilla WebKitMediaKeys.createSession documentation> 
createSession_ ::
               (MonadDOM m) => MediaKeys -> Maybe MediaKeySessionType -> m ()
createSession_ self sessionType
  = liftDOM
      (void (self ^. jsf "createSession" [toJSVal sessionType]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.setServerCertificate Mozilla WebKitMediaKeys.setServerCertificate documentation> 
setServerCertificate ::
                     (MonadDOM m, IsBufferSource serverCertificate) =>
                       MediaKeys -> serverCertificate -> m Bool
setServerCertificate self serverCertificate
  = liftDOM
      (((self ^. jsf "setServerCertificate" [toJSVal serverCertificate])
          >>= readPromise)
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.setServerCertificate Mozilla WebKitMediaKeys.setServerCertificate documentation> 
setServerCertificate_ ::
                      (MonadDOM m, IsBufferSource serverCertificate) =>
                        MediaKeys -> serverCertificate -> m ()
setServerCertificate_ self serverCertificate
  = liftDOM
      (void
         (self ^. jsf "setServerCertificate" [toJSVal serverCertificate]))
