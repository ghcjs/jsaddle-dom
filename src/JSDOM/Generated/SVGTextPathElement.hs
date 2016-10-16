{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGTextPathElement
       (pattern TEXTPATH_METHODTYPE_UNKNOWN,
        pattern TEXTPATH_METHODTYPE_ALIGN,
        pattern TEXTPATH_METHODTYPE_STRETCH,
        pattern TEXTPATH_SPACINGTYPE_UNKNOWN,
        pattern TEXTPATH_SPACINGTYPE_AUTO,
        pattern TEXTPATH_SPACINGTYPE_EXACT, getStartOffset,
        getStartOffsetUnsafe, getStartOffsetUnchecked, getMethod,
        getMethodUnsafe, getMethodUnchecked, getSpacing, getSpacingUnsafe,
        getSpacingUnchecked, SVGTextPathElement(..),
        gTypeSVGTextPathElement)
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
pattern TEXTPATH_METHODTYPE_UNKNOWN = 0
pattern TEXTPATH_METHODTYPE_ALIGN = 1
pattern TEXTPATH_METHODTYPE_STRETCH = 2
pattern TEXTPATH_SPACINGTYPE_UNKNOWN = 0
pattern TEXTPATH_SPACINGTYPE_AUTO = 1
pattern TEXTPATH_SPACINGTYPE_EXACT = 2

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.startOffset Mozilla SVGTextPathElement.startOffset documentation> 
getStartOffset ::
               (MonadDOM m) => SVGTextPathElement -> m (Maybe SVGAnimatedLength)
getStartOffset self
  = liftDOM ((self ^. js "startOffset") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.startOffset Mozilla SVGTextPathElement.startOffset documentation> 
getStartOffsetUnsafe ::
                     (MonadDOM m, HasCallStack) =>
                       SVGTextPathElement -> m SVGAnimatedLength
getStartOffsetUnsafe self
  = liftDOM
      (((self ^. js "startOffset") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.startOffset Mozilla SVGTextPathElement.startOffset documentation> 
getStartOffsetUnchecked ::
                        (MonadDOM m) => SVGTextPathElement -> m SVGAnimatedLength
getStartOffsetUnchecked self
  = liftDOM ((self ^. js "startOffset") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.method Mozilla SVGTextPathElement.method documentation> 
getMethod ::
          (MonadDOM m) =>
            SVGTextPathElement -> m (Maybe SVGAnimatedEnumeration)
getMethod self = liftDOM ((self ^. js "method") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.method Mozilla SVGTextPathElement.method documentation> 
getMethodUnsafe ::
                (MonadDOM m, HasCallStack) =>
                  SVGTextPathElement -> m SVGAnimatedEnumeration
getMethodUnsafe self
  = liftDOM
      (((self ^. js "method") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.method Mozilla SVGTextPathElement.method documentation> 
getMethodUnchecked ::
                   (MonadDOM m) => SVGTextPathElement -> m SVGAnimatedEnumeration
getMethodUnchecked self
  = liftDOM ((self ^. js "method") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.spacing Mozilla SVGTextPathElement.spacing documentation> 
getSpacing ::
           (MonadDOM m) =>
             SVGTextPathElement -> m (Maybe SVGAnimatedEnumeration)
getSpacing self = liftDOM ((self ^. js "spacing") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.spacing Mozilla SVGTextPathElement.spacing documentation> 
getSpacingUnsafe ::
                 (MonadDOM m, HasCallStack) =>
                   SVGTextPathElement -> m SVGAnimatedEnumeration
getSpacingUnsafe self
  = liftDOM
      (((self ^. js "spacing") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement.spacing Mozilla SVGTextPathElement.spacing documentation> 
getSpacingUnchecked ::
                    (MonadDOM m) => SVGTextPathElement -> m SVGAnimatedEnumeration
getSpacingUnchecked self
  = liftDOM ((self ^. js "spacing") >>= fromJSValUnchecked)
