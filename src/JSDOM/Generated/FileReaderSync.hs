{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.FileReaderSync
       (newFileReaderSync, readAsArrayBuffer, readAsArrayBuffer_,
        readAsBinaryString, readAsBinaryString_, readAsText, readAsText_,
        readAsDataURL, readAsDataURL_, FileReaderSync(..),
        gTypeFileReaderSync)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync Mozilla FileReaderSync documentation> 
newFileReaderSync :: (MonadDOM m) => m FileReaderSync
newFileReaderSync
  = liftDOM (FileReaderSync <$> new (jsg "FileReaderSync") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsArrayBuffer Mozilla FileReaderSync.readAsArrayBuffer documentation> 
readAsArrayBuffer ::
                  (MonadDOM m, IsBlob blob) =>
                    FileReaderSync -> blob -> m ArrayBuffer
readAsArrayBuffer self blob
  = liftDOM
      ((self ^. jsf "readAsArrayBuffer" [toJSVal blob]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsArrayBuffer Mozilla FileReaderSync.readAsArrayBuffer documentation> 
readAsArrayBuffer_ ::
                   (MonadDOM m, IsBlob blob) => FileReaderSync -> blob -> m ()
readAsArrayBuffer_ self blob
  = liftDOM (void (self ^. jsf "readAsArrayBuffer" [toJSVal blob]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsBinaryString Mozilla FileReaderSync.readAsBinaryString documentation> 
readAsBinaryString ::
                   (MonadDOM m, IsBlob blob, FromJSString result) =>
                     FileReaderSync -> blob -> m result
readAsBinaryString self blob
  = liftDOM
      ((self ^. jsf "readAsBinaryString" [toJSVal blob]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsBinaryString Mozilla FileReaderSync.readAsBinaryString documentation> 
readAsBinaryString_ ::
                    (MonadDOM m, IsBlob blob) => FileReaderSync -> blob -> m ()
readAsBinaryString_ self blob
  = liftDOM (void (self ^. jsf "readAsBinaryString" [toJSVal blob]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsText Mozilla FileReaderSync.readAsText documentation> 
readAsText ::
           (MonadDOM m, IsBlob blob, ToJSString encoding,
            FromJSString result) =>
             FileReaderSync -> blob -> Maybe encoding -> m result
readAsText self blob encoding
  = liftDOM
      ((self ^. jsf "readAsText" [toJSVal blob, toJSVal encoding]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsText Mozilla FileReaderSync.readAsText documentation> 
readAsText_ ::
            (MonadDOM m, IsBlob blob, ToJSString encoding) =>
              FileReaderSync -> blob -> Maybe encoding -> m ()
readAsText_ self blob encoding
  = liftDOM
      (void (self ^. jsf "readAsText" [toJSVal blob, toJSVal encoding]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsDataURL Mozilla FileReaderSync.readAsDataURL documentation> 
readAsDataURL ::
              (MonadDOM m, IsBlob blob, FromJSString result) =>
                FileReaderSync -> blob -> m result
readAsDataURL self blob
  = liftDOM
      ((self ^. jsf "readAsDataURL" [toJSVal blob]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsDataURL Mozilla FileReaderSync.readAsDataURL documentation> 
readAsDataURL_ ::
               (MonadDOM m, IsBlob blob) => FileReaderSync -> blob -> m ()
readAsDataURL_ self blob
  = liftDOM (void (self ^. jsf "readAsDataURL" [toJSVal blob]))
