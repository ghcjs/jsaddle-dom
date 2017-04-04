{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DOMParser
       (newDOMParser, parseFromString, parseFromString_, DOMParser(..),
        gTypeDOMParser)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
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
                (MonadDOM m, ToJSString string, ToJSString contentType) =>
                  DOMParser -> string -> contentType -> m Document
parseFromString self string contentType
  = liftDOM
      ((self ^. jsf "parseFromString"
          [toJSVal string, toJSVal contentType])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMParser.parseFromString Mozilla DOMParser.parseFromString documentation> 
parseFromString_ ::
                 (MonadDOM m, ToJSString string, ToJSString contentType) =>
                   DOMParser -> string -> contentType -> m ()
parseFromString_ self string contentType
  = liftDOM
      (void
         (self ^. jsf "parseFromString"
            [toJSVal string, toJSVal contentType]))
