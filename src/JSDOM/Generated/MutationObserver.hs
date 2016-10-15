{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MutationObserver
       (newMutationObserver, observe, takeRecords, takeRecords_,
        disconnect, MutationObserver(..), gTypeMutationObserver)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver Mozilla MutationObserver documentation> 
newMutationObserver ::
                    (MonadDOM m, IsMutationCallback callback) =>
                      Maybe callback -> m MutationObserver
newMutationObserver callback
  = liftDOM
      (MutationObserver <$>
         new (jsg "MutationObserver") [toJSVal callback])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver.observe Mozilla MutationObserver.observe documentation> 
observe ::
        (MonadDOM m, IsNode target, IsDictionary options) =>
          MutationObserver -> Maybe target -> Maybe options -> m ()
observe self target options
  = liftDOM
      (void (self ^. jsf "observe" [toJSVal target, toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver.takeRecords Mozilla MutationObserver.takeRecords documentation> 
takeRecords ::
            (MonadDOM m) => MutationObserver -> m [Maybe MutationRecord]
takeRecords self
  = liftDOM ((self ^. jsf "takeRecords" ()) >>= fromJSArray)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver.takeRecords Mozilla MutationObserver.takeRecords documentation> 
takeRecords_ :: (MonadDOM m) => MutationObserver -> m ()
takeRecords_ self = liftDOM (void (self ^. jsf "takeRecords" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver.disconnect Mozilla MutationObserver.disconnect documentation> 
disconnect :: (MonadDOM m) => MutationObserver -> m ()
disconnect self = liftDOM (void (self ^. jsf "disconnect" ()))
