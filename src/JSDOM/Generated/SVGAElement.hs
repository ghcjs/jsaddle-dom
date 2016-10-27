{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGAElement
       (getTarget, getTargetUnsafe, getTargetUnchecked, SVGAElement(..),
        gTypeSVGAElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement.target Mozilla SVGAElement.target documentation> 
getTarget ::
          (MonadDOM m) => SVGAElement -> m (Maybe SVGAnimatedString)
getTarget self = liftDOM ((self ^. js "target") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement.target Mozilla SVGAElement.target documentation> 
getTargetUnsafe ::
                (MonadDOM m, HasCallStack) => SVGAElement -> m SVGAnimatedString
getTargetUnsafe self
  = liftDOM
      (((self ^. js "target") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement.target Mozilla SVGAElement.target documentation> 
getTargetUnchecked ::
                   (MonadDOM m) => SVGAElement -> m SVGAnimatedString
getTargetUnchecked self
  = liftDOM ((self ^. js "target") >>= fromJSValUnchecked)
