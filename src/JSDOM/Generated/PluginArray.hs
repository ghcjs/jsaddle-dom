{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.PluginArray
       (item, namedItem, refresh, getLength, PluginArray,
        castToPluginArray, gTypePluginArray)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.item Mozilla PluginArray.item documentation> 
item :: (MonadDOM m) => PluginArray -> Word -> m (Maybe Plugin)
item self index
  = liftDOM ((self ^. jsf "item" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.namedItem Mozilla PluginArray.namedItem documentation> 
namedItem ::
          (MonadDOM m, ToJSString name) =>
            PluginArray -> name -> m (Maybe Plugin)
namedItem self name
  = liftDOM ((self ^. jsf "namedItem" [toJSVal name]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.refresh Mozilla PluginArray.refresh documentation> 
refresh :: (MonadDOM m) => PluginArray -> Bool -> m ()
refresh self reload
  = liftDOM (void (self ^. jsf "refresh" [toJSVal reload]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.length Mozilla PluginArray.length documentation> 
getLength :: (MonadDOM m) => PluginArray -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))
