{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Plugin
       (item, item_, itemUnsafe, itemUnchecked, namedItem, namedItem_,
        namedItemUnsafe, namedItemUnchecked, getName, getFilename,
        getDescription, getLength, Plugin(..), gTypePlugin)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.item Mozilla Plugin.item documentation> 
item :: (MonadDOM m) => Plugin -> Word -> m (Maybe MimeType)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.item Mozilla Plugin.item documentation> 
item_ :: (MonadDOM m) => Plugin -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.item Mozilla Plugin.item documentation> 
itemUnsafe ::
           (MonadDOM m, HasCallStack) => Plugin -> Word -> m MimeType
itemUnsafe self index
  = liftDOM
      (((self ^. jsf "item" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.item Mozilla Plugin.item documentation> 
itemUnchecked :: (MonadDOM m) => Plugin -> Word -> m MimeType
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.namedItem Mozilla Plugin.namedItem documentation> 
namedItem ::
          (MonadDOM m, ToJSString name) =>
            Plugin -> name -> m (Maybe MimeType)
namedItem self name
  = liftDOM ((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.namedItem Mozilla Plugin.namedItem documentation> 
namedItem_ ::
           (MonadDOM m, ToJSString name) => Plugin -> name -> m ()
namedItem_ self name
  = liftDOM (void (self ^. jsf "namedItem" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.namedItem Mozilla Plugin.namedItem documentation> 
namedItemUnsafe ::
                (MonadDOM m, ToJSString name, HasCallStack) =>
                  Plugin -> name -> m MimeType
namedItemUnsafe self name
  = liftDOM
      (((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.namedItem Mozilla Plugin.namedItem documentation> 
namedItemUnchecked ::
                   (MonadDOM m, ToJSString name) => Plugin -> name -> m MimeType
namedItemUnchecked self name
  = liftDOM
      ((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.name Mozilla Plugin.name documentation> 
getName :: (MonadDOM m, FromJSString result) => Plugin -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.filename Mozilla Plugin.filename documentation> 
getFilename ::
            (MonadDOM m, FromJSString result) => Plugin -> m result
getFilename self
  = liftDOM ((self ^. js "filename") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.description Mozilla Plugin.description documentation> 
getDescription ::
               (MonadDOM m, FromJSString result) => Plugin -> m result
getDescription self
  = liftDOM ((self ^. js "description") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.length Mozilla Plugin.length documentation> 
getLength :: (MonadDOM m) => Plugin -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
