{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.File
       (newFile, getName, getLastModified, File(..), gTypeFile) where
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/File Mozilla File documentation> 
newFile ::
        (MonadDOM m, IsBlobPart fileBits, ToJSString fileName) =>
          [fileBits] -> fileName -> Maybe FilePropertyBag -> m File
newFile fileBits fileName options
  = liftDOM
      (File <$>
         new (jsg "File")
           [toJSVal (array fileBits), toJSVal fileName, toJSVal options])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/File.name Mozilla File.name documentation> 
getName :: (MonadDOM m, FromJSString result) => File -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/File.lastModified Mozilla File.lastModified documentation> 
getLastModified :: (MonadDOM m) => File -> m Int64
getLastModified self
  = liftDOM (round <$> ((self ^. js "lastModified") >>= valToNumber))
