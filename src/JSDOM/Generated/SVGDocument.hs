{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.SVGDocument
       (createEvent, getRootElement, SVGDocument, castToSVGDocument,
        gTypeSVGDocument)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.createEvent Mozilla SVGDocument.createEvent documentation> 
createEvent ::
            (MonadDOM m, ToJSString eventType) =>
              SVGDocument -> eventType -> m (Maybe Event)
createEvent self eventType
  = liftDOM
      ((self ^. jsf "createEvent" [toJSVal eventType]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.rootElement Mozilla SVGDocument.rootElement documentation> 
getRootElement ::
               (MonadDOM m) => SVGDocument -> m (Maybe SVGSVGElement)
getRootElement self
  = liftDOM ((self ^. js "rootElement") >>= fromJSVal)