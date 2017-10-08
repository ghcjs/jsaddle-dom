{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.FileReader
       (newFileReader, readAsArrayBuffer, readAsBinaryString, readAsText,
        readAsDataURL, abort, pattern EMPTY, pattern LOADING, pattern DONE,
        getReadyState, getResult, getResultUnsafe, getResultUnchecked,
        getError, loadStart, progress, load, abortEvent, error, loadEnd,
        FileReader(..), gTypeFileReader)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader Mozilla FileReader documentation> 
newFileReader :: (MonadDOM m) => m FileReader
newFileReader = liftDOM (FileReader <$> new (jsg "FileReader") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readAsArrayBuffer Mozilla FileReader.readAsArrayBuffer documentation> 
readAsArrayBuffer ::
                  (MonadDOM m, IsBlob blob) => FileReader -> Maybe blob -> m ()
readAsArrayBuffer self blob
  = liftDOM (void (self ^. jsf "readAsArrayBuffer" [toJSVal blob]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readAsBinaryString Mozilla FileReader.readAsBinaryString documentation> 
readAsBinaryString ::
                   (MonadDOM m, IsBlob blob) => FileReader -> Maybe blob -> m ()
readAsBinaryString self blob
  = liftDOM (void (self ^. jsf "readAsBinaryString" [toJSVal blob]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readAsText Mozilla FileReader.readAsText documentation> 
readAsText ::
           (MonadDOM m, IsBlob blob, ToJSString encoding) =>
             FileReader -> Maybe blob -> Maybe encoding -> m ()
readAsText self blob encoding
  = liftDOM
      (void (self ^. jsf "readAsText" [toJSVal blob, toJSVal encoding]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readAsDataURL Mozilla FileReader.readAsDataURL documentation> 
readAsDataURL ::
              (MonadDOM m, IsBlob blob) => FileReader -> Maybe blob -> m ()
readAsDataURL self blob
  = liftDOM (void (self ^. jsf "readAsDataURL" [toJSVal blob]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.abort Mozilla FileReader.abort documentation> 
abort :: (MonadDOM m) => FileReader -> m ()
abort self = liftDOM (void (self ^. jsf "abort" ()))
pattern EMPTY = 0
pattern LOADING = 1
pattern DONE = 2

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readyState Mozilla FileReader.readyState documentation> 
getReadyState :: (MonadDOM m) => FileReader -> m Word
getReadyState self
  = liftDOM (round <$> ((self ^. js "readyState") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.result Mozilla FileReader.result documentation> 
getResult ::
          (MonadDOM m) => FileReader -> m (Maybe StringOrArrayBuffer)
getResult self = liftDOM ((self ^. js "result") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.result Mozilla FileReader.result documentation> 
getResultUnsafe ::
                (MonadDOM m, HasCallStack) => FileReader -> m StringOrArrayBuffer
getResultUnsafe self
  = liftDOM
      (((self ^. js "result") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.result Mozilla FileReader.result documentation> 
getResultUnchecked ::
                   (MonadDOM m) => FileReader -> m StringOrArrayBuffer
getResultUnchecked self
  = liftDOM ((self ^. js "result") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.error Mozilla FileReader.error documentation> 
getError :: (MonadDOM m) => FileReader -> m FileError
getError self
  = liftDOM ((self ^. js "error") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.onloadstart Mozilla FileReader.onloadstart documentation> 
loadStart :: EventName FileReader ProgressEvent
loadStart = unsafeEventNameAsync (toJSString "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.onprogress Mozilla FileReader.onprogress documentation> 
progress :: EventName FileReader ProgressEvent
progress = unsafeEventNameAsync (toJSString "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.onload Mozilla FileReader.onload documentation> 
load :: EventName FileReader UIEvent
load = unsafeEventNameAsync (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.onabort Mozilla FileReader.onabort documentation> 
abortEvent :: EventName FileReader UIEvent
abortEvent = unsafeEventNameAsync (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.onerror Mozilla FileReader.onerror documentation> 
error :: EventName FileReader UIEvent
error = unsafeEventNameAsync (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.onloadend Mozilla FileReader.onloadend documentation> 
loadEnd :: EventName FileReader ProgressEvent
loadEnd = unsafeEventNameAsync (toJSString "loadend")
