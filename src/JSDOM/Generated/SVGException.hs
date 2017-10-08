{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGException
       (toString, toString_, pattern SVG_WRONG_TYPE_ERR,
        pattern SVG_INVALID_VALUE_ERR, pattern SVG_MATRIX_NOT_INVERTABLE,
        getCode, getName, getMessage, SVGException(..), gTypeSVGException)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGException.toString Mozilla SVGException.toString documentation> 
toString ::
         (MonadDOM m, FromJSString result) => SVGException -> m result
toString self
  = liftDOM ((self ^. jsf "toString" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGException.toString Mozilla SVGException.toString documentation> 
toString_ :: (MonadDOM m) => SVGException -> m ()
toString_ self = liftDOM (void (self ^. jsf "toString" ()))
pattern SVG_WRONG_TYPE_ERR = 0
pattern SVG_INVALID_VALUE_ERR = 1
pattern SVG_MATRIX_NOT_INVERTABLE = 2

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGException.code Mozilla SVGException.code documentation> 
getCode :: (MonadDOM m) => SVGException -> m Word
getCode self
  = liftDOM (round <$> ((self ^. js "code") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGException.name Mozilla SVGException.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => SVGException -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGException.message Mozilla SVGException.message documentation> 
getMessage ::
           (MonadDOM m, FromJSString result) => SVGException -> m result
getMessage self
  = liftDOM ((self ^. js "message") >>= fromJSValUnchecked)
