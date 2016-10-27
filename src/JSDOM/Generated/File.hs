{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.File
       (getName, getLastModifiedDate, getLastModifiedDateUnsafe,
        getLastModifiedDateUnchecked, File(..), gTypeFile)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/File.name Mozilla File.name documentation> 
getName :: (MonadDOM m, FromJSString result) => File -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/File.lastModifiedDate Mozilla File.lastModifiedDate documentation> 
getLastModifiedDate :: (MonadDOM m) => File -> m (Maybe Date)
getLastModifiedDate self
  = liftDOM ((self ^. js "lastModifiedDate") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/File.lastModifiedDate Mozilla File.lastModifiedDate documentation> 
getLastModifiedDateUnsafe ::
                          (MonadDOM m, HasCallStack) => File -> m Date
getLastModifiedDateUnsafe self
  = liftDOM
      (((self ^. js "lastModifiedDate") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/File.lastModifiedDate Mozilla File.lastModifiedDate documentation> 
getLastModifiedDateUnchecked :: (MonadDOM m) => File -> m Date
getLastModifiedDateUnchecked self
  = liftDOM ((self ^. js "lastModifiedDate") >>= fromJSValUnchecked)
