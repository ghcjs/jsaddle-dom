{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MimeTypeArray
       (item, item_, itemUnsafe, itemUnchecked, namedItem, namedItem_,
        namedItemUnsafe, namedItemUnchecked, getLength, MimeTypeArray(..),
        gTypeMimeTypeArray)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.item Mozilla MimeTypeArray.item documentation> 
item :: (MonadDOM m) => MimeTypeArray -> Word -> m (Maybe MimeType)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.item Mozilla MimeTypeArray.item documentation> 
item_ :: (MonadDOM m) => MimeTypeArray -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.item Mozilla MimeTypeArray.item documentation> 
itemUnsafe ::
           (MonadDOM m, HasCallStack) => MimeTypeArray -> Word -> m MimeType
itemUnsafe self index
  = liftDOM
      (((self ^. jsf "item" [toJSVal index]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.item Mozilla MimeTypeArray.item documentation> 
itemUnchecked ::
              (MonadDOM m) => MimeTypeArray -> Word -> m MimeType
itemUnchecked self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.namedItem Mozilla MimeTypeArray.namedItem documentation> 
namedItem ::
          (MonadDOM m, ToJSString name) =>
            MimeTypeArray -> name -> m (Maybe MimeType)
namedItem self name
  = liftDOM ((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.namedItem Mozilla MimeTypeArray.namedItem documentation> 
namedItem_ ::
           (MonadDOM m, ToJSString name) => MimeTypeArray -> name -> m ()
namedItem_ self name
  = liftDOM (void (self ^. jsf "namedItem" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.namedItem Mozilla MimeTypeArray.namedItem documentation> 
namedItemUnsafe ::
                (MonadDOM m, ToJSString name, HasCallStack) =>
                  MimeTypeArray -> name -> m MimeType
namedItemUnsafe self name
  = liftDOM
      (((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.namedItem Mozilla MimeTypeArray.namedItem documentation> 
namedItemUnchecked ::
                   (MonadDOM m, ToJSString name) =>
                     MimeTypeArray -> name -> m MimeType
namedItemUnchecked self name
  = liftDOM
      ((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.length Mozilla MimeTypeArray.length documentation> 
getLength :: (MonadDOM m) => MimeTypeArray -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
