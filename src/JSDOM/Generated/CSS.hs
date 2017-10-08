{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CSS
       (supports2, supports2_, supports, supports_, escape, escape_,
        CSS(..), gTypeCSS)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports2 ::
          (MonadDOM m, ToJSString property, ToJSString value) =>
            CSS -> property -> value -> m Bool
supports2 self property value
  = liftDOM
      ((self ^. jsf "supports" [toJSVal property, toJSVal value]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports2_ ::
           (MonadDOM m, ToJSString property, ToJSString value) =>
             CSS -> property -> value -> m ()
supports2_ self property value
  = liftDOM
      (void (self ^. jsf "supports" [toJSVal property, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports ::
         (MonadDOM m, ToJSString conditionText) =>
           CSS -> conditionText -> m Bool
supports self conditionText
  = liftDOM
      ((self ^. jsf "supports" [toJSVal conditionText]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports_ ::
          (MonadDOM m, ToJSString conditionText) =>
            CSS -> conditionText -> m ()
supports_ self conditionText
  = liftDOM (void (self ^. jsf "supports" [toJSVal conditionText]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.escape Mozilla CSS.escape documentation> 
escape ::
       (MonadDOM m, ToJSString ident, FromJSString result) =>
         CSS -> ident -> m result
escape self ident
  = liftDOM
      ((self ^. jsf "escape" [toJSVal ident]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.escape Mozilla CSS.escape documentation> 
escape_ :: (MonadDOM m, ToJSString ident) => CSS -> ident -> m ()
escape_ self ident
  = liftDOM (void (self ^. jsf "escape" [toJSVal ident]))
