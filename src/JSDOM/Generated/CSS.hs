{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CSS
       (supports2, supports, CSS, castToCSS, gTypeCSS) where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports2 ::
          (MonadDOM m, ToJSString property, ToJSString value) =>
            CSS -> property -> value -> m Bool
supports2 self property value
  = liftDOM
      ((self ^. jsf "supports" [toJSVal property, toJSVal value]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports ::
         (MonadDOM m, ToJSString conditionText) =>
           CSS -> conditionText -> m Bool
supports self conditionText
  = liftDOM
      ((self ^. jsf "supports" [toJSVal conditionText]) >>= valToBool)
