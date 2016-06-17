{-# LANGUAGE PatternSynonyms #-}
module JSDOM.Generated.HTMLOptionsCollection
       (namedItem, addBefore, add, remove, setSelectedIndex,
        getSelectedIndex, setLength, getLength, HTMLOptionsCollection,
        castToHTMLOptionsCollection, gTypeHTMLOptionsCollection)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.namedItem Mozilla HTMLOptionsCollection.namedItem documentation> 
namedItem ::
          (MonadDOM m, ToJSString name) =>
            HTMLOptionsCollection -> name -> m (Maybe Node)
namedItem self name
  = liftDOM ((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.add Mozilla HTMLOptionsCollection.add documentation> 
addBefore ::
          (MonadDOM m, IsHTMLElement element, IsHTMLElement before) =>
            HTMLOptionsCollection -> Maybe element -> Maybe before -> m ()
addBefore self element before
  = liftDOM
      (void (self ^. jsf "add" [toJSVal element, toJSVal before]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.add Mozilla HTMLOptionsCollection.add documentation> 
add ::
    (MonadDOM m, IsHTMLElement element) =>
      HTMLOptionsCollection -> Maybe element -> Int -> m ()
add self element index
  = liftDOM
      (void (self ^. jsf "add" [toJSVal element, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.remove Mozilla HTMLOptionsCollection.remove documentation> 
remove :: (MonadDOM m) => HTMLOptionsCollection -> Word -> m ()
remove self index
  = liftDOM (void (self ^. jsf "remove" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.selectedIndex Mozilla HTMLOptionsCollection.selectedIndex documentation> 
setSelectedIndex ::
                 (MonadDOM m) => HTMLOptionsCollection -> Int -> m ()
setSelectedIndex self val
  = liftDOM (self ^. jss "selectedIndex" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.selectedIndex Mozilla HTMLOptionsCollection.selectedIndex documentation> 
getSelectedIndex :: (MonadDOM m) => HTMLOptionsCollection -> m Int
getSelectedIndex self
  = liftDOM
      (round <$> ((self ^. js "selectedIndex") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.length Mozilla HTMLOptionsCollection.length documentation> 
setLength :: (MonadDOM m) => HTMLOptionsCollection -> Word -> m ()
setLength self val = liftDOM (self ^. jss "length" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.length Mozilla HTMLOptionsCollection.length documentation> 
getLength :: (MonadDOM m) => HTMLOptionsCollection -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
