{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.XMLSerializer
       (newXMLSerializer, serializeToString, serializeToString_,
        XMLSerializer, castToXMLSerializer, gTypeXMLSerializer)
       where
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer Mozilla XMLSerializer documentation> 
newXMLSerializer :: (MonadDOM m) => m XMLSerializer
newXMLSerializer
  = liftDOM (XMLSerializer <$> new (jsg "XMLSerializer") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer.serializeToString Mozilla XMLSerializer.serializeToString documentation> 
serializeToString ::
                  (MonadDOM m, IsNode node, FromJSString result) =>
                    XMLSerializer -> Maybe node -> m result
serializeToString self node
  = liftDOM
      ((self ^. jsf "serializeToString" [toJSVal node]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer.serializeToString Mozilla XMLSerializer.serializeToString documentation> 
serializeToString_ ::
                   (MonadDOM m, IsNode node) => XMLSerializer -> Maybe node -> m ()
serializeToString_ self node
  = liftDOM (void (self ^. jsf "serializeToString" [toJSVal node]))
