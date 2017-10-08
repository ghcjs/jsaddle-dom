{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SourceBufferList
       (item, item_, getLength, addsourcebuffer, removesourcebuffer,
        SourceBufferList(..), gTypeSourceBufferList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.item Mozilla SourceBufferList.item documentation> 
item :: (MonadDOM m) => SourceBufferList -> Word -> m SourceBuffer
item self index
  = liftDOM
      ((self ^. jsf "item" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.item Mozilla SourceBufferList.item documentation> 
item_ :: (MonadDOM m) => SourceBufferList -> Word -> m ()
item_ self index
  = liftDOM (void (self ^. jsf "item" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.length Mozilla SourceBufferList.length documentation> 
getLength :: (MonadDOM m) => SourceBufferList -> m Word
getLength self
  = liftDOM (round <$> ((self ^. js "length") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.onaddsourcebuffer Mozilla SourceBufferList.onaddsourcebuffer documentation> 
addsourcebuffer :: EventName SourceBufferList onaddsourcebuffer
addsourcebuffer = unsafeEventName (toJSString "addsourcebuffer")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.onremovesourcebuffer Mozilla SourceBufferList.onremovesourcebuffer documentation> 
removesourcebuffer ::
                     EventName SourceBufferList onremovesourcebuffer
removesourcebuffer
  = unsafeEventName (toJSString "removesourcebuffer")
