{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HashChangeEvent
       (newHashChangeEvent, initHashChangeEvent, getOldURL, getNewURL,
        HashChangeEvent(..), gTypeHashChangeEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent Mozilla HashChangeEvent documentation> 
newHashChangeEvent ::
                   (MonadDOM m, ToJSString type') =>
                     type' -> Maybe HashChangeEventInit -> m HashChangeEvent
newHashChangeEvent type' eventInitDict
  = liftDOM
      (HashChangeEvent <$>
         new (jsg "HashChangeEvent") [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HashChangeEvent.initHashChangeEvent Mozilla HashChangeEvent.initHashChangeEvent documentation> 
initHashChangeEvent ::
                    (MonadDOM m, ToJSString type', ToJSString oldURL,
                     ToJSString newURL) =>
                      HashChangeEvent ->
                        Maybe type' -> Bool -> Bool -> Maybe oldURL -> Maybe newURL -> m ()
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
