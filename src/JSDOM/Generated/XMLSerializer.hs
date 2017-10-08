{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.XMLSerializer
       (newXMLSerializer, serializeToString, serializeToString_,
        XMLSerializer(..), gTypeXMLSerializer)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer Mozilla XMLSerializer documentation> 
newXMLSerializer :: (MonadDOM m) => m XMLSerializer
newXMLSerializer
  = liftDOM (XMLSerializer <$> new (jsg "XMLSerializer") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer.serializeToString Mozilla XMLSerializer.serializeToString documentation> 
serializeToString ::
                  (MonadDOM m, IsNode node, FromJSString result) =>
                    XMLSerializer -> node -> m result
serializeToString self node
  = liftDOM
      ((self ^. jsf "serializeToString" [toJSVal node]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer.serializeToString Mozilla XMLSerializer.serializeToString documentation> 
serializeToString_ ::
                   (MonadDOM m, IsNode node) => XMLSerializer -> node -> m ()
serializeToString_ self node
  = liftDOM (void (self ^. jsf "serializeToString" [toJSVal node]))
