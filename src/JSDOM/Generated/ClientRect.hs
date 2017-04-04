{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ClientRect
       (getTop, getRight, getBottom, getLeft, getWidth, getHeight,
        ClientRect(..), gTypeClientRect)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect.top Mozilla ClientRect.top documentation> 
getTop :: (MonadDOM m) => ClientRect -> m Float
getTop self
  = liftDOM (realToFrac <$> ((self ^. js "top") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect.right Mozilla ClientRect.right documentation> 
getRight :: (MonadDOM m) => ClientRect -> m Float
getRight self
  = liftDOM (realToFrac <$> ((self ^. js "right") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect.bottom Mozilla ClientRect.bottom documentation> 
getBottom :: (MonadDOM m) => ClientRect -> m Float
getBottom self
  = liftDOM (realToFrac <$> ((self ^. js "bottom") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect.left Mozilla ClientRect.left documentation> 
getLeft :: (MonadDOM m) => ClientRect -> m Float
getLeft self
  = liftDOM (realToFrac <$> ((self ^. js "left") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect.width Mozilla ClientRect.width documentation> 
getWidth :: (MonadDOM m) => ClientRect -> m Float
getWidth self
  = liftDOM (realToFrac <$> ((self ^. js "width") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect.height Mozilla ClientRect.height documentation> 
getHeight :: (MonadDOM m) => ClientRect -> m Float
getHeight self
  = liftDOM (realToFrac <$> ((self ^. js "height") >>= valToNumber))
