{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.NamedNodeMap
       (item, item_, itemUnsafe, itemUnchecked, getNamedItem,
        getNamedItem_, getNamedItemUnsafe, getNamedItemUnchecked,
        getNamedItemNS, getNamedItemNS_, getNamedItemNSUnsafe,
        getNamedItemNSUnchecked, setNamedItem, setNamedItem_,
        setNamedItemUnsafe, setNamedItemUnchecked, setNamedItemNS,
        setNamedItemNS_, setNamedItemNSUnsafe, setNamedItemNSUnchecked,
        removeNamedItem, removeNamedItem_, removeNamedItemNS,
        removeNamedItemNS_, getLength, NamedNodeMap(..), gTypeNamedNodeMap)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, asyncFunction, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
item :: (MonadDOM m) => NamedNodeMap -> Word -> m (Maybe Attr)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
item_ :: (MonadDOM m) => NamedNodeMap -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
itemUnsafe ::
           (MonadDOM m, HasCallStack) => NamedNodeMap -> Word -> m Attr
itemUnsafe self index
  = liftDOM
      (((self ^. jsf "item" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.item Mozilla NamedNodeMap.item documentation> 
itemUnchecked :: (MonadDOM m) => NamedNodeMap -> Word -> m Attr
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItem ::
             (MonadDOM m, ToJSString qualifiedName) =>
               NamedNodeMap -> qualifiedName -> m (Maybe Attr)
getNamedItem self qualifiedName
  = liftDOM ((self ! qualifiedName) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItem_ ::
              (MonadDOM m, ToJSString qualifiedName) =>
                NamedNodeMap -> qualifiedName -> m ()
getNamedItem_ self qualifiedName
  = liftDOM (void (self ! qualifiedName))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItemUnsafe ::
                   (MonadDOM m, ToJSString qualifiedName, HasCallStack) =>
                     NamedNodeMap -> qualifiedName -> m Attr
getNamedItemUnsafe self qualifiedName
  = liftDOM
      (((self ! qualifiedName) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItem Mozilla NamedNodeMap.getNamedItem documentation> 
getNamedItemUnchecked ::
                      (MonadDOM m, ToJSString qualifiedName) =>
                        NamedNodeMap -> qualifiedName -> m Attr
getNamedItemUnchecked self qualifiedName
  = liftDOM ((self ! qualifiedName) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItemNS Mozilla NamedNodeMap.getNamedItemNS documentation> 
getNamedItemNS ::
               (MonadDOM m, ToJSString namespaceURI, ToJSString localName) =>
                 NamedNodeMap -> Maybe namespaceURI -> localName -> m (Maybe Attr)
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
                       NamedNodeMap -> Maybe namespaceURI -> localName -> m Attr
getNamedItemNSUnsafe self namespaceURI localName
  = liftDOM
      (((self ^. jsf "getNamedItemNS"
           [toJSVal namespaceURI, toJSVal localName])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.getNamedItemNS Mozilla NamedNodeMap.getNamedItemNS documentation> 
getNamedItemNSUnchecked ::
                        (MonadDOM m, ToJSString namespaceURI, ToJSString localName) =>
                          NamedNodeMap -> Maybe namespaceURI -> localName -> m Attr
getNamedItemNSUnchecked self namespaceURI localName
  = liftDOM
      ((self ^. jsf "getNamedItemNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItem Mozilla NamedNodeMap.setNamedItem documentation> 
setNamedItem ::
             (MonadDOM m) => NamedNodeMap -> Attr -> m (Maybe Attr)
setNamedItem self attr
  = liftDOM
      ((self ^. jsf "setNamedItem" [toJSVal attr]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItem Mozilla NamedNodeMap.setNamedItem documentation> 
setNamedItem_ :: (MonadDOM m) => NamedNodeMap -> Attr -> m ()
setNamedItem_ self attr
  = liftDOM (void (self ^. jsf "setNamedItem" [toJSVal attr]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItem Mozilla NamedNodeMap.setNamedItem documentation> 
setNamedItemUnsafe ::
                   (MonadDOM m, HasCallStack) => NamedNodeMap -> Attr -> m Attr
setNamedItemUnsafe self attr
  = liftDOM
      (((self ^. jsf "setNamedItem" [toJSVal attr]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItem Mozilla NamedNodeMap.setNamedItem documentation> 
setNamedItemUnchecked ::
                      (MonadDOM m) => NamedNodeMap -> Attr -> m Attr
setNamedItemUnchecked self attr
  = liftDOM
      ((self ^. jsf "setNamedItem" [toJSVal attr]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItemNS Mozilla NamedNodeMap.setNamedItemNS documentation> 
setNamedItemNS ::
               (MonadDOM m) => NamedNodeMap -> Attr -> m (Maybe Attr)
setNamedItemNS self attr
  = liftDOM
      ((self ^. jsf "setNamedItemNS" [toJSVal attr]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItemNS Mozilla NamedNodeMap.setNamedItemNS documentation> 
setNamedItemNS_ :: (MonadDOM m) => NamedNodeMap -> Attr -> m ()
setNamedItemNS_ self attr
  = liftDOM (void (self ^. jsf "setNamedItemNS" [toJSVal attr]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItemNS Mozilla NamedNodeMap.setNamedItemNS documentation> 
setNamedItemNSUnsafe ::
                     (MonadDOM m, HasCallStack) => NamedNodeMap -> Attr -> m Attr
setNamedItemNSUnsafe self attr
  = liftDOM
      (((self ^. jsf "setNamedItemNS" [toJSVal attr]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.setNamedItemNS Mozilla NamedNodeMap.setNamedItemNS documentation> 
setNamedItemNSUnchecked ::
                        (MonadDOM m) => NamedNodeMap -> Attr -> m Attr
setNamedItemNSUnchecked self attr
  = liftDOM
      ((self ^. jsf "setNamedItemNS" [toJSVal attr]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItem Mozilla NamedNodeMap.removeNamedItem documentation> 
removeNamedItem ::
                (MonadDOM m, ToJSString qualifiedName) =>
                  NamedNodeMap -> qualifiedName -> m Attr
removeNamedItem self qualifiedName
  = liftDOM
      ((self ^. jsf "removeNamedItem" [toJSVal qualifiedName]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItem Mozilla NamedNodeMap.removeNamedItem documentation> 
removeNamedItem_ ::
                 (MonadDOM m, ToJSString qualifiedName) =>
                   NamedNodeMap -> qualifiedName -> m ()
removeNamedItem_ self qualifiedName
  = liftDOM
      (void (self ^. jsf "removeNamedItem" [toJSVal qualifiedName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItemNS Mozilla NamedNodeMap.removeNamedItemNS documentation> 
removeNamedItemNS ::
                  (MonadDOM m, ToJSString namespaceURI, ToJSString localName) =>
                    NamedNodeMap -> Maybe namespaceURI -> localName -> m Attr
removeNamedItemNS self namespaceURI localName
  = liftDOM
      ((self ^. jsf "removeNamedItemNS"
          [toJSVal namespaceURI, toJSVal localName])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.removeNamedItemNS Mozilla NamedNodeMap.removeNamedItemNS documentation> 
removeNamedItemNS_ ::
                   (MonadDOM m, ToJSString namespaceURI, ToJSString localName) =>
                     NamedNodeMap -> Maybe namespaceURI -> localName -> m ()
removeNamedItemNS_ self namespaceURI localName
  = liftDOM
      (void
         (self ^. jsf "removeNamedItemNS"
            [toJSVal namespaceURI, toJSVal localName]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap.length Mozilla NamedNodeMap.length documentation> 
getLength :: (MonadDOM m) => NamedNodeMap -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
