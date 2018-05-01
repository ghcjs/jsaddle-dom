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
            property -> value -> m Bool
supports2 property value
  = liftDOM
      (((jsg "CSS") ^. jsf "supports" [toJSVal property, toJSVal value])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports2_ ::
           (MonadDOM m, ToJSString property, ToJSString value) =>
             property -> value -> m ()
supports2_ property value
  = liftDOM
      (void
         ((jsg "CSS") ^. jsf "supports" [toJSVal property, toJSVal value]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports ::
         (MonadDOM m, ToJSString conditionText) => conditionText -> m Bool
supports conditionText
  = liftDOM
      (((jsg "CSS") ^. jsf "supports" [toJSVal conditionText]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports_ ::
          (MonadDOM m, ToJSString conditionText) => conditionText -> m ()
supports_ conditionText
  = liftDOM
      (void ((jsg "CSS") ^. jsf "supports" [toJSVal conditionText]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.escape Mozilla CSS.escape documentation> 
escape ::
       (MonadDOM m, ToJSString ident, FromJSString result) =>
         ident -> m result
escape ident
  = liftDOM
      (((jsg "CSS") ^. jsf "escape" [toJSVal ident]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.escape Mozilla CSS.escape documentation> 
escape_ :: (MonadDOM m, ToJSString ident) => ident -> m ()
escape_ ident
  = liftDOM (void ((jsg "CSS") ^. jsf "escape" [toJSVal ident]))
