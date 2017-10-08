{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGLActiveInfo
       (getSize, getType, getName, WebGLActiveInfo(..),
        gTypeWebGLActiveInfo)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLActiveInfo.size Mozilla WebGLActiveInfo.size documentation> 
getSize :: (MonadDOM m) => WebGLActiveInfo -> m Int
getSize self
  = liftDOM (round <$> ((self ^. js "size") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLActiveInfo.type Mozilla WebGLActiveInfo.type documentation> 
getType :: (MonadDOM m) => WebGLActiveInfo -> m Word
getType self
  = liftDOM (round <$> ((self ^. js "type") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLActiveInfo.name Mozilla WebGLActiveInfo.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => WebGLActiveInfo -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)
