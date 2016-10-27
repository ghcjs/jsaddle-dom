{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.NamedNodeMap
       (getNamedItem, getNamedItem_, getNamedItemUnsafe,
        getNamedItemUnchecked, setNamedItem, setNamedItem_,
        setNamedItemUnsafe, setNamedItemUnchecked, removeNamedItem,
        removeNamedItem_, removeNamedItemUnsafe, removeNamedItemUnchecked,
        item, item_, itemUnsafe, itemUnchecked, getNamedItemNS,
        getNamedItemNS_, getNamedItemNSUnsafe, getNamedItemNSUnchecked,
        setNamedItemNS, setNamedItemNS_, setNamedItemNSUnsafe,
        setNamedItemNSUnchecked, removeNamedItemNS, removeNamedItemNS_,
        removeNamedItemNSUnsafe, removeNamedItemNSUnchecked, getLength,
        NamedNodeMap(..), gTypeNamedNodeMap)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItem ::
             (MonadDOM m, ToJSString name) =>
               NamedNodeMap -> name -> m (Maybe Node)
getNamedItem self name
  = liftDOM
      ((self ^. jsf "getNamedItem" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItem_ ::
              (MonadDOM m, ToJSString name) => NamedNodeMap -> name -> m ()
getNamedItem_ self name
  = liftDOM (void (self ^. jsf "getNamedItem" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItemUnsafe ::
                   (MonadDOM m, ToJSString name, HasCallStack) =>
                     NamedNodeMap -> name -> m Node
getNamedItemUnsafe self name
  = liftDOM
      (((self ^. jsf "getNamedItem" [toJSVal name]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItemUnchecked ::
                      (MonadDOM m, ToJSString name) => NamedNodeMap -> name -> m Node
getNamedItemUnchecked self name
  = liftDOM
      ((self ^. jsf "getNamedItem" [toJSVal name]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItem Mozilla NamedNodeMap.setNamedItem documentation> 
setNamedItem ::
             (MonadDOM m, IsNode node) =>
               NamedNodeMap -> Maybe node -> m (Maybe Node)
setNamedItem self node
  = liftDOM
      ((self ^. jsf "setNamedItem" [toJSVal node]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItem Mozilla NamedNodeMap.setNamedItem documentation> 
setNamedItem_ ::
              (MonadDOM m, IsNode node) => NamedNodeMap -> Maybe node -> m ()
setNamedItem_ self node
  = liftDOM (void (self ^. jsf "setNamedItem" [toJSVal node]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItem Mozilla NamedNodeMap.setNamedItem documentation> 
setNamedItemUnsafe ::
                   (MonadDOM m, IsNode node, HasCallStack) =>
                     NamedNodeMap -> Maybe node -> m Node
setNamedItemUnsafe self node
  = liftDOM
      (((self ^. jsf "setNamedItem" [toJSVal node]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItem Mozilla NamedNodeMap.setNamedItem documentation> 
setNamedItemUnchecked ::
                      (MonadDOM m, IsNode node) => NamedNodeMap -> Maybe node -> m Node
setNamedItemUnchecked self node
  = liftDOM
      ((self ^. jsf "setNamedItem" [toJSVal node]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItem Mozilla NamedNodeMap.removeNamedItem documentation> 
removeNamedItem ::
                (MonadDOM m, ToJSString name) =>
                  NamedNodeMap -> name -> m (Maybe Node)
removeNamedItem self name
  = liftDOM
      ((self ^. jsf "removeNamedItem" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItem Mozilla NamedNodeMap.removeNamedItem documentation> 
removeNamedItem_ ::
                 (MonadDOM m, ToJSString name) => NamedNodeMap -> name -> m ()
removeNamedItem_ self name
  = liftDOM (void (self ^. jsf "removeNamedItem" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItem Mozilla NamedNodeMap.removeNamedItem documentation> 
removeNamedItemUnsafe ::
                      (MonadDOM m, ToJSString name, HasCallStack) =>
                        NamedNodeMap -> name -> m Node
removeNamedItemUnsafe self name
  = liftDOM
      (((self ^. jsf "removeNamedItem" [toJSVal name]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItem Mozilla NamedNodeMap.removeNamedItem documentation> 
removeNamedItemUnchecked ::
                         (MonadDOM m, ToJSString name) => NamedNodeMap -> name -> m Node
removeNamedItemUnchecked self name
  = liftDOM
      ((self ^. jsf "removeNamedItem" [toJSVal name]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
item :: (MonadDOM m) => NamedNodeMap -> Word -> m (Maybe Node)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
item_ :: (MonadDOM m) => NamedNodeMap -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
itemUnsafe ::
           (MonadDOM m, HasCallStack) => NamedNodeMap -> Word -> m Node
itemUnsafe self index
  = liftDOM
      (((self ^. jsf "item" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
itemUnchecked :: (MonadDOM m) => NamedNodeMap -> Word -> m Node
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItemNS Mozilla NamedNodeMap.getNamedItemNS documentation> 
getNamedItemNS ::
               (MonadDOM m, ToJSString namespaceURI, ToJSString localName) =>
                 NamedNodeMap -> Maybe namespaceURI -> localName -> m (Maybe Node)
getNamedItemNS self namespaceURI localName
  = liftDOM
      ((self ^. jsf "getNamedItemNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItemNS Mozilla NamedNodeMap.getNamedItemNS documentation> 
getNamedItemNS_ ::
                (MonadDOM m, ToJSString namespaceURI, ToJSString localName) =>
                  NamedNodeMap -> Maybe namespaceURI -> localName -> m ()
getNamedItemNS_ self namespaceURI localName
  = liftDOM
      (void
         (self ^. jsf "getNamedItemNS"
            [toJSVal namespaceURI, toJSVal localName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItemNS Mozilla NamedNodeMap.getNamedItemNS documentation> 
getNamedItemNSUnsafe ::
                     (MonadDOM m, ToJSString namespaceURI, ToJSString localName,
                      HasCallStack) =>
                       NamedNodeMap -> Maybe namespaceURI -> localName -> m Node
getNamedItemNSUnsafe self namespaceURI localName
  = liftDOM
      (((self ^. jsf "getNamedItemNS"
           [toJSVal namespaceURI, toJSVal localName])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItemNS Mozilla NamedNodeMap.getNamedItemNS documentation> 
getNamedItemNSUnchecked ::
                        (MonadDOM m, ToJSString namespaceURI, ToJSString localName) =>
                          NamedNodeMap -> Maybe namespaceURI -> localName -> m Node
getNamedItemNSUnchecked self namespaceURI localName
  = liftDOM
      ((self ^. jsf "getNamedItemNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItemNS Mozilla NamedNodeMap.setNamedItemNS documentation> 
setNamedItemNS ::
               (MonadDOM m, IsNode node) =>
                 NamedNodeMap -> Maybe node -> m (Maybe Node)
setNamedItemNS self node
  = liftDOM
      ((self ^. jsf "setNamedItemNS" [toJSVal node]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItemNS Mozilla NamedNodeMap.setNamedItemNS documentation> 
setNamedItemNS_ ::
                (MonadDOM m, IsNode node) => NamedNodeMap -> Maybe node -> m ()
setNamedItemNS_ self node
  = liftDOM (void (self ^. jsf "setNamedItemNS" [toJSVal node]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItemNS Mozilla NamedNodeMap.setNamedItemNS documentation> 
setNamedItemNSUnsafe ::
                     (MonadDOM m, IsNode node, HasCallStack) =>
                       NamedNodeMap -> Maybe node -> m Node
setNamedItemNSUnsafe self node
  = liftDOM
      (((self ^. jsf "setNamedItemNS" [toJSVal node]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItemNS Mozilla NamedNodeMap.setNamedItemNS documentation> 
setNamedItemNSUnchecked ::
                        (MonadDOM m, IsNode node) => NamedNodeMap -> Maybe node -> m Node
setNamedItemNSUnchecked self node
  = liftDOM
      ((self ^. jsf "setNamedItemNS" [toJSVal node]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItemNS Mozilla NamedNodeMap.removeNamedItemNS documentation> 
removeNamedItemNS ::
                  (MonadDOM m, ToJSString namespaceURI, ToJSString localName) =>
                    NamedNodeMap -> Maybe namespaceURI -> localName -> m (Maybe Node)
removeNamedItemNS self namespaceURI localName
  = liftDOM
      ((self ^. jsf "removeNamedItemNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItemNS Mozilla NamedNodeMap.removeNamedItemNS documentation> 
removeNamedItemNS_ ::
                   (MonadDOM m, ToJSString namespaceURI, ToJSString localName) =>
                     NamedNodeMap -> Maybe namespaceURI -> localName -> m ()
removeNamedItemNS_ self namespaceURI localName
  = liftDOM
      (void
         (self ^. jsf "removeNamedItemNS"
            [toJSVal namespaceURI, toJSVal localName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItemNS Mozilla NamedNodeMap.removeNamedItemNS documentation> 
removeNamedItemNSUnsafe ::
                        (MonadDOM m, ToJSString namespaceURI, ToJSString localName,
                         HasCallStack) =>
                          NamedNodeMap -> Maybe namespaceURI -> localName -> m Node
removeNamedItemNSUnsafe self namespaceURI localName
  = liftDOM
      (((self ^. jsf "removeNamedItemNS"
           [toJSVal namespaceURI, toJSVal localName])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItemNS Mozilla NamedNodeMap.removeNamedItemNS documentation> 
removeNamedItemNSUnchecked ::
                           (MonadDOM m, ToJSString namespaceURI, ToJSString localName) =>
                             NamedNodeMap -> Maybe namespaceURI -> localName -> m Node
removeNamedItemNSUnchecked self namespaceURI localName
  = liftDOM
      ((self ^. jsf "removeNamedItemNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.length Mozilla NamedNodeMap.length documentation> 
getLength :: (MonadDOM m) => NamedNodeMap -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
