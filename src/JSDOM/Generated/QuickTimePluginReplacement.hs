{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.QuickTimePluginReplacement
       (postEvent, getMovieSize, getTimedMetaData, getAccessLog,
        getErrorLog, QuickTimePluginReplacement(..),
        gTypeQuickTimePluginReplacement)
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
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/QuickTimePluginReplacement.postEvent Mozilla QuickTimePluginReplacement.postEvent documentation> 
postEvent ::
          (MonadDOM m, ToJSString eventName) =>
            QuickTimePluginReplacement -> eventName -> m ()
postEvent self eventName
  = liftDOM (void (self ^. jsf "postEvent" [toJSVal eventName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/QuickTimePluginReplacement.movieSize Mozilla QuickTimePluginReplacement.movieSize documentation> 
getMovieSize ::
             (MonadDOM m) => QuickTimePluginReplacement -> m Word64
getMovieSize self
  = liftDOM (round <$> ((self ^. js "movieSize") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/QuickTimePluginReplacement.timedMetaData Mozilla QuickTimePluginReplacement.timedMetaData documentation> 
getTimedMetaData ::
                 (MonadDOM m) => QuickTimePluginReplacement -> m JSVal
getTimedMetaData self
  = liftDOM ((self ^. js "timedMetaData") >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/QuickTimePluginReplacement.accessLog Mozilla QuickTimePluginReplacement.accessLog documentation> 
getAccessLog ::
             (MonadDOM m) => QuickTimePluginReplacement -> m JSVal
getAccessLog self = liftDOM ((self ^. js "accessLog") >>= toJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/QuickTimePluginReplacement.errorLog Mozilla QuickTimePluginReplacement.errorLog documentation> 
getErrorLog ::
            (MonadDOM m) => QuickTimePluginReplacement -> m JSVal
getErrorLog self = liftDOM ((self ^. js "errorLog") >>= toJSVal)
