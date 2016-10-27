{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLPreElement
       (setWidth, getWidth, setWrap, getWrap, HTMLPreElement(..),
        gTypeHTMLPreElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.width Mozilla HTMLPreElement.width documentation> 
setWidth :: (MonadDOM m) => HTMLPreElement -> Int -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.width Mozilla HTMLPreElement.width documentation> 
getWidth :: (MonadDOM m) => HTMLPreElement -> m Int
getWidth self
  = liftDOM (round <$> ((self ^. js "width") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.wrap Mozilla HTMLPreElement.wrap documentation> 
setWrap :: (MonadDOM m) => HTMLPreElement -> Bool -> m ()
setWrap self val = liftDOM (self ^. jss "wrap" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.wrap Mozilla HTMLPreElement.wrap documentation> 
getWrap :: (MonadDOM m) => HTMLPreElement -> m Bool
getWrap self = liftDOM ((self ^. js "wrap") >>= valToBool)
