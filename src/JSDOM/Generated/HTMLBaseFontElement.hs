{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLBaseFontElement
       (setColor, getColor, setFace, getFace, setSize, getSize,
        HTMLBaseFontElement(..), gTypeHTMLBaseFontElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.color Mozilla HTMLBaseFontElement.color documentation> 
setColor ::
         (MonadDOM m, ToJSString val) => HTMLBaseFontElement -> val -> m ()
setColor self val = liftDOM (self ^. jss "color" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.color Mozilla HTMLBaseFontElement.color documentation> 
getColor ::
         (MonadDOM m, FromJSString result) =>
           HTMLBaseFontElement -> m result
getColor self
  = liftDOM ((self ^. js "color") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.face Mozilla HTMLBaseFontElement.face documentation> 
setFace ::
        (MonadDOM m, ToJSString val) => HTMLBaseFontElement -> val -> m ()
setFace self val = liftDOM (self ^. jss "face" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.face Mozilla HTMLBaseFontElement.face documentation> 
getFace ::
        (MonadDOM m, FromJSString result) =>
          HTMLBaseFontElement -> m result
getFace self = liftDOM ((self ^. js "face") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.size Mozilla HTMLBaseFontElement.size documentation> 
setSize :: (MonadDOM m) => HTMLBaseFontElement -> Int -> m ()
setSize self val = liftDOM (self ^. jss "size" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.size Mozilla HTMLBaseFontElement.size documentation> 
getSize :: (MonadDOM m) => HTMLBaseFontElement -> m Int
getSize self
  = liftDOM (round <$> ((self ^. js "size") >>= valToNumber))
