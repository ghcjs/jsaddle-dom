{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGTests
       (hasExtension, hasExtension_, getRequiredFeatures,
        getRequiredExtensions, getSystemLanguage, SVGTests(..),
        gTypeSVGTests, IsSVGTests, toSVGTests)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.hasExtension Mozilla SVGTests.hasExtension documentation> 
hasExtension ::
             (MonadDOM m, IsSVGTests self, ToJSString extension) =>
               self -> Maybe extension -> m Bool
hasExtension self extension
  = liftDOM
      (((toSVGTests self) ^. jsf "hasExtension" [toJSVal extension]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.hasExtension Mozilla SVGTests.hasExtension documentation> 
hasExtension_ ::
              (MonadDOM m, IsSVGTests self, ToJSString extension) =>
                self -> Maybe extension -> m ()
hasExtension_ self extension
  = liftDOM
      (void
         ((toSVGTests self) ^. jsf "hasExtension" [toJSVal extension]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.requiredFeatures Mozilla SVGTests.requiredFeatures documentation> 
getRequiredFeatures ::
                    (MonadDOM m, IsSVGTests self) => self -> m SVGStringList
getRequiredFeatures self
  = liftDOM
      (((toSVGTests self) ^. js "requiredFeatures") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.requiredExtensions Mozilla SVGTests.requiredExtensions documentation> 
getRequiredExtensions ::
                      (MonadDOM m, IsSVGTests self) => self -> m SVGStringList
getRequiredExtensions self
  = liftDOM
      (((toSVGTests self) ^. js "requiredExtensions") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.systemLanguage Mozilla SVGTests.systemLanguage documentation> 
getSystemLanguage ::
                  (MonadDOM m, IsSVGTests self) => self -> m SVGStringList
getSystemLanguage self
  = liftDOM
      (((toSVGTests self) ^. js "systemLanguage") >>= fromJSValUnchecked)
