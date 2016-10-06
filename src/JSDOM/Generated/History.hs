{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.History
       (back, forward, go, pushState, replaceState, getLength, getState,
        History, castToHistory, gTypeHistory)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.back Mozilla History.back documentation> 
back :: (MonadDOM m) => History -> m ()
back self = liftDOM (void (self ^. jsf "back" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.forward Mozilla History.forward documentation> 
forward :: (MonadDOM m) => History -> m ()
forward self = liftDOM (void (self ^. jsf "forward" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.go Mozilla History.go documentation> 
go :: (MonadDOM m) => History -> Int -> m ()
go self distance
  = liftDOM (void (self ^. jsf "go" [toJSVal distance]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.pushState Mozilla History.pushState documentation> 
pushState ::
          (MonadDOM m, ToJSString title, ToJSString url) =>
            History -> JSVal -> title -> url -> m ()
pushState self data' title url
  = liftDOM
      (void
         (self ^. jsf "pushState"
            [toJSVal data', toJSVal title, toJSVal url]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.replaceState Mozilla History.replaceState documentation> 
replaceState ::
             (MonadDOM m, ToJSString title, ToJSString url) =>
               History -> JSVal -> title -> url -> m ()
replaceState self data' title url
  = liftDOM
      (void
         (self ^. jsf "replaceState"
            [toJSVal data', toJSVal title, toJSVal url]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.length Mozilla History.length documentation> 
getLength :: (MonadDOM m) => History -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.state Mozilla History.state documentation> 
getState ::
         (MonadDOM m) => History -> m (Maybe SerializedScriptValue)
getState self = liftDOM ((self ^. js "state") >>= fromJSVal)
