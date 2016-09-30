{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.FileReaderSync
       (newFileReaderSync, readAsArrayBuffer, readAsBinaryString,
        readAsText, readAsDataURL, FileReaderSync, castToFileReaderSync,
        gTypeFileReaderSync)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync Mozilla FileReaderSync documentation> 
newFileReaderSync :: (MonadDOM m) => m FileReaderSync
newFileReaderSync
  = liftDOM (FileReaderSync <$> new (jsg "FileReaderSync") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsArrayBuffer Mozilla FileReaderSync.readAsArrayBuffer documentation> 
readAsArrayBuffer ::
                  (MonadDOM m, IsBlob blob) =>
                    FileReaderSync -> Maybe blob -> m (Maybe ArrayBuffer)
readAsArrayBuffer self blob
  = liftDOM
      ((self ^. jsf "readAsArrayBuffer" [toJSVal blob]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsBinaryString Mozilla FileReaderSync.readAsBinaryString documentation> 
readAsBinaryString ::
                   (MonadDOM m, IsBlob blob, FromJSString result) =>
                     FileReaderSync -> Maybe blob -> m result
readAsBinaryString self blob
  = liftDOM
      ((self ^. jsf "readAsBinaryString" [toJSVal blob]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsText Mozilla FileReaderSync.readAsText documentation> 
readAsText ::
           (MonadDOM m, IsBlob blob, ToJSString encoding,
            FromJSString result) =>
             FileReaderSync -> Maybe blob -> encoding -> m result
readAsText self blob encoding
  = liftDOM
      ((self ^. jsf "readAsText" [toJSVal blob, toJSVal encoding]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsDataURL Mozilla FileReaderSync.readAsDataURL documentation> 
readAsDataURL ::
              (MonadDOM m, IsBlob blob, FromJSString result) =>
                FileReaderSync -> Maybe blob -> m result
readAsDataURL self blob
  = liftDOM
      ((self ^. jsf "readAsDataURL" [toJSVal blob]) >>=
         fromJSValUnchecked)
