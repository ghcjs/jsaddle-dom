{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebKitPoint
       (newWebKitPoint, setX, getX, setY, getY, WebKitPoint(..),
        gTypeWebKitPoint)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint Mozilla WebKitPoint documentation> 
newWebKitPoint ::
               (MonadDOM m) => Maybe Float -> Maybe Float -> m WebKitPoint
newWebKitPoint x y
  = liftDOM
      (WebKitPoint <$> new (jsg "WebKitPoint") [toJSVal x, toJSVal y])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint.x Mozilla WebKitPoint.x documentation> 
setX :: (MonadDOM m) => WebKitPoint -> Float -> m ()
setX self val = liftDOM (self ^. jss "x" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint.x Mozilla WebKitPoint.x documentation> 
getX :: (MonadDOM m) => WebKitPoint -> m Float
getX self
  = liftDOM (realToFrac <$> ((self ^. js "x") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint.y Mozilla WebKitPoint.y documentation> 
setY :: (MonadDOM m) => WebKitPoint -> Float -> m ()
setY self val = liftDOM (self ^. jss "y" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint.y Mozilla WebKitPoint.y documentation> 
getY :: (MonadDOM m) => WebKitPoint -> m Float
getY self
  = liftDOM (realToFrac <$> ((self ^. js "y") >>= valToNumber))
