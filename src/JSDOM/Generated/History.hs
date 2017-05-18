{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.History
       (back, forward, go, pushState, replaceState, getLength,
        setScrollRestoration, getScrollRestoration, getState, History(..),
        gTypeHistory)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.back Mozilla History.back documentation> 
back :: (MonadDOM m) => History -> m ()
back self = liftDOM (void (self ^. jsf "back" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.forward Mozilla History.forward documentation> 
forward :: (MonadDOM m) => History -> m ()
forward self = liftDOM (void (self ^. jsf "forward" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.go Mozilla History.go documentation> 
go :: (MonadDOM m) => History -> Maybe Int -> m ()
go self distance
  = liftDOM (void (self ^. jsf "go" [toJSVal distance]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.pushState Mozilla History.pushState documentation> 
pushState ::
          (MonadDOM m, ToJSVal data', ToJSString title, ToJSString url) =>
            History -> data' -> title -> Maybe url -> m ()
pushState self data' title url
  = liftDOM
      (void
         (self ^. jsf "pushState"
            [toJSVal data', toJSVal title, toJSVal url]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.replaceState Mozilla History.replaceState documentation> 
replaceState ::
             (MonadDOM m, ToJSVal data', ToJSString title, ToJSString url) =>
               History -> data' -> title -> Maybe url -> m ()
replaceState self data' title url
  = liftDOM
      (void
         (self ^. jsf "replaceState"
            [toJSVal data', toJSVal title, toJSVal url]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.length Mozilla History.length documentation> 
getLength :: (MonadDOM m) => History -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.scrollRestoration Mozilla History.scrollRestoration documentation> 
setScrollRestoration ::
                     (MonadDOM m) => History -> ScrollRestoration -> m ()
setScrollRestoration self val
  = liftDOM (self ^. jss "scrollRestoration" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.scrollRestoration Mozilla History.scrollRestoration documentation> 
getScrollRestoration ::
                     (MonadDOM m) => History -> m ScrollRestoration
getScrollRestoration self
  = liftDOM ((self ^. js "scrollRestoration") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.state Mozilla History.state documentation> 
getState :: (MonadDOM m) => History -> m SerializedScriptValue
getState self
  = liftDOM ((self ^. js "state") >>= fromJSValUnchecked)
