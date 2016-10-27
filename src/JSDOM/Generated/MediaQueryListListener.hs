{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaQueryListListener
       (newMediaQueryListListener, newMediaQueryListListenerSync,
        newMediaQueryListListenerAsync, MediaQueryListListener)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListListener Mozilla MediaQueryListListener documentation> 
newMediaQueryListListener ::
                          (MonadDOM m) =>
                            (Maybe MediaQueryList -> JSM ()) -> m MediaQueryListListener
newMediaQueryListListener callback
  = liftDOM
      (MediaQueryListListener . Callback <$>
         function
           (\ _ _ [list] -> fromJSVal list >>= \ list' -> callback list'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListListener Mozilla MediaQueryListListener documentation> 
newMediaQueryListListenerSync ::
                              (MonadDOM m) =>
                                (Maybe MediaQueryList -> JSM ()) -> m MediaQueryListListener
newMediaQueryListListenerSync callback
  = liftDOM
      (MediaQueryListListener . Callback <$>
         function
           (\ _ _ [list] -> fromJSVal list >>= \ list' -> callback list'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryListListener Mozilla MediaQueryListListener documentation> 
newMediaQueryListListenerAsync ::
                               (MonadDOM m) =>
                                 (Maybe MediaQueryList -> JSM ()) -> m MediaQueryListListener
newMediaQueryListListenerAsync callback
  = liftDOM
      (MediaQueryListListener . Callback <$>
         function
           (\ _ _ [list] -> fromJSVal list >>= \ list' -> callback list'))
