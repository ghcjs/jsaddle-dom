{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.NamedNodeMap
       (getNamedItem, setNamedItem, removeNamedItem, item, getNamedItemNS,
        setNamedItemNS, removeNamedItemNS, getLength, NamedNodeMap,
        castToNamedNodeMap, gTypeNamedNodeMap)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItem ::
             (MonadDOM m, ToJSString name) =>
               NamedNodeMap -> name -> m (Maybe Node)
getNamedItem self name
  = liftDOM
      ((self ^. jsf "getNamedItem" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItem Mozilla NamedNodeMap.setNamedItem documentation> 
setNamedItem ::
             (MonadDOM m, IsNode node) =>
               NamedNodeMap -> Maybe node -> m (Maybe Node)
setNamedItem self node
  = liftDOM
      ((self ^. jsf "setNamedItem" [toJSVal node]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItem Mozilla NamedNodeMap.removeNamedItem documentation> 
removeNamedItem ::
                (MonadDOM m, ToJSString name) =>
                  NamedNodeMap -> name -> m (Maybe Node)
removeNamedItem self name
  = liftDOM
      ((self ^. jsf "removeNamedItem" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
item :: (MonadDOM m) => NamedNodeMap -> Word -> m (Maybe Node)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItemNS Mozilla NamedNodeMap.getNamedItemNS documentation> 
getNamedItemNS ::
               (MonadDOM m, ToJSString namespaceURI, ToJSString localName) =>
                 NamedNodeMap -> Maybe namespaceURI -> localName -> m (Maybe Node)
getNamedItemNS self namespaceURI localName
  = liftDOM
      ((self ^. jsf "getNamedItemNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItemNS Mozilla NamedNodeMap.setNamedItemNS documentation> 
setNamedItemNS ::
               (MonadDOM m, IsNode node) =>
                 NamedNodeMap -> Maybe node -> m (Maybe Node)
setNamedItemNS self node
  = liftDOM
      ((self ^. jsf "setNamedItemNS" [toJSVal node]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItemNS Mozilla NamedNodeMap.removeNamedItemNS documentation> 
removeNamedItemNS ::
                  (MonadDOM m, ToJSString namespaceURI, ToJSString localName) =>
                    NamedNodeMap -> Maybe namespaceURI -> localName -> m (Maybe Node)
removeNamedItemNS self namespaceURI localName
  = liftDOM
      ((self ^. jsf "removeNamedItemNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.length Mozilla NamedNodeMap.length documentation> 
getLength :: (MonadDOM m) => NamedNodeMap -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))