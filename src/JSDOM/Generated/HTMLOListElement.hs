{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLOListElement
       (setCompact, getCompact, setStart, getStart, setReversed,
        getReversed, setType, getType, HTMLOListElement(..),
        gTypeHTMLOListElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.compact Mozilla HTMLOListElement.compact documentation> 
setCompact :: (MonadDOM m) => HTMLOListElement -> Bool -> m ()
setCompact self val = liftDOM (self ^. jss "compact" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.compact Mozilla HTMLOListElement.compact documentation> 
getCompact :: (MonadDOM m) => HTMLOListElement -> m Bool
getCompact self = liftDOM ((self ^. js "compact") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.start Mozilla HTMLOListElement.start documentation> 
setStart :: (MonadDOM m) => HTMLOListElement -> Int -> m ()
setStart self val = liftDOM (self ^. jss "start" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.start Mozilla HTMLOListElement.start documentation> 
getStart :: (MonadDOM m) => HTMLOListElement -> m Int
getStart self
  = liftDOM (round <$> ((self ^. js "start") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.reversed Mozilla HTMLOListElement.reversed documentation> 
setReversed :: (MonadDOM m) => HTMLOListElement -> Bool -> m ()
setReversed self val
  = liftDOM (self ^. jss "reversed" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.reversed Mozilla HTMLOListElement.reversed documentation> 
getReversed :: (MonadDOM m) => HTMLOListElement -> m Bool
getReversed self = liftDOM ((self ^. js "reversed") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.type Mozilla HTMLOListElement.type documentation> 
setType ::
        (MonadDOM m, ToJSString val) => HTMLOListElement -> val -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.type Mozilla HTMLOListElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => HTMLOListElement -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)
