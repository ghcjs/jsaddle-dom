{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Geoposition
       (getCoords, getCoordsUnsafe, getCoordsUnchecked, getTimestamp,
        Geoposition(..), gTypeGeoposition)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geoposition.coords Mozilla Geoposition.coords documentation> 
getCoords :: (MonadDOM m) => Geoposition -> m (Maybe Coordinates)
getCoords self = liftDOM ((self ^. js "coords") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geoposition.coords Mozilla Geoposition.coords documentation> 
getCoordsUnsafe ::
                (MonadDOM m, HasCallStack) => Geoposition -> m Coordinates
getCoordsUnsafe self
  = liftDOM
      (((self ^. js "coords") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geoposition.coords Mozilla Geoposition.coords documentation> 
getCoordsUnchecked :: (MonadDOM m) => Geoposition -> m Coordinates
getCoordsUnchecked self
  = liftDOM ((self ^. js "coords") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Geoposition.timestamp Mozilla Geoposition.timestamp documentation> 
getTimestamp :: (MonadDOM m) => Geoposition -> m Word
getTimestamp self
  = liftDOM (round <$> ((self ^. js "timestamp") >>= valToNumber))
