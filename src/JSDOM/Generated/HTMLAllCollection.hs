{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLAllCollection
       (item, item_, itemUnchecked, namedItem, namedItem_,
        namedItemUnchecked, tags, tags_, tagsUnchecked, getLength,
        HTMLAllCollection(..), gTypeHTMLAllCollection)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.item Mozilla HTMLAllCollection.item documentation> 
item :: (MonadDOM m) => HTMLAllCollection -> Word -> m (Maybe Node)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.item Mozilla HTMLAllCollection.item documentation> 
item_ :: (MonadDOM m) => HTMLAllCollection -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.item Mozilla HTMLAllCollection.item documentation> 
itemUnchecked ::
              (MonadDOM m) => HTMLAllCollection -> Word -> m Node
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.namedItem Mozilla HTMLAllCollection.namedItem documentation> 
namedItem ::
          (MonadDOM m, ToJSString name) =>
            HTMLAllCollection -> name -> m (Maybe Node)
namedItem self name
  = liftDOM ((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.namedItem Mozilla HTMLAllCollection.namedItem documentation> 
namedItem_ ::
           (MonadDOM m, ToJSString name) => HTMLAllCollection -> name -> m ()
namedItem_ self name
  = liftDOM (void (self ^. jsf "namedItem" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.namedItem Mozilla HTMLAllCollection.namedItem documentation> 
namedItemUnchecked ::
                   (MonadDOM m, ToJSString name) =>
                     HTMLAllCollection -> name -> m Node
namedItemUnchecked self name
  = liftDOM
      ((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.tags Mozilla HTMLAllCollection.tags documentation> 
tags ::
     (MonadDOM m, ToJSString name) =>
       HTMLAllCollection -> name -> m (Maybe NodeList)
tags self name
  = liftDOM ((self ^. jsf "tags" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.tags Mozilla HTMLAllCollection.tags documentation> 
tags_ ::
      (MonadDOM m, ToJSString name) => HTMLAllCollection -> name -> m ()
tags_ self name
  = liftDOM (void (self ^. jsf "tags" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.tags Mozilla HTMLAllCollection.tags documentation> 
tagsUnchecked ::
              (MonadDOM m, ToJSString name) =>
                HTMLAllCollection -> name -> m NodeList
tagsUnchecked self name
  = liftDOM
      ((self ^. jsf "tags" [toJSVal name]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.length Mozilla HTMLAllCollection.length documentation> 
getLength :: (MonadDOM m) => HTMLAllCollection -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
