{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DOMParser
       (newDOMParser, parseFromString, parseFromString_,
        parseFromStringUnchecked, DOMParser, castToDOMParser,
        gTypeDOMParser)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMParser Mozilla DOMParser documentation> 
newDOMParser :: (MonadDOM m) => m DOMParser
newDOMParser = liftDOM (DOMParser <$> new (jsg "DOMParser") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMParser.parseFromString Mozilla DOMParser.parseFromString documentation> 
parseFromString ::
                (MonadDOM m, ToJSString str, ToJSString contentType) =>
                  DOMParser -> str -> contentType -> m (Maybe Document)
parseFromString self str contentType
  = liftDOM
      ((self ^. jsf "parseFromString" [toJSVal str, toJSVal contentType])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMParser.parseFromString Mozilla DOMParser.parseFromString documentation> 
parseFromString_ ::
                 (MonadDOM m, ToJSString str, ToJSString contentType) =>
                   DOMParser -> str -> contentType -> m ()
parseFromString_ self str contentType
  = liftDOM
      (void
         (self ^. jsf "parseFromString" [toJSVal str, toJSVal contentType]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMParser.parseFromString Mozilla DOMParser.parseFromString documentation> 
parseFromStringUnchecked ::
                         (MonadDOM m, ToJSString str, ToJSString contentType) =>
                           DOMParser -> str -> contentType -> m Document
parseFromStringUnchecked self str contentType
  = liftDOM
      ((self ^. jsf "parseFromString" [toJSVal str, toJSVal contentType])
         >>= fromJSValUnchecked)
