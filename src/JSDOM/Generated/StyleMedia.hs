{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.StyleMedia
       (matchMedium, matchMedium_, getType, StyleMedia(..),
        gTypeStyleMedia)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleMedia.matchMedium Mozilla StyleMedia.matchMedium documentation> 
matchMedium ::
            (MonadDOM m, ToJSString mediaquery) =>
              StyleMedia -> mediaquery -> m Bool
matchMedium self mediaquery
  = liftDOM
      ((self ^. jsf "matchMedium" [toJSVal mediaquery]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleMedia.matchMedium Mozilla StyleMedia.matchMedium documentation> 
matchMedium_ ::
             (MonadDOM m, ToJSString mediaquery) =>
               StyleMedia -> mediaquery -> m ()
matchMedium_ self mediaquery
  = liftDOM (void (self ^. jsf "matchMedium" [toJSVal mediaquery]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleMedia.type Mozilla StyleMedia.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => StyleMedia -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)
