{-# LANGUAGE OverloadedStrings, PatternSynonyms #-}
module JSDOM (
  currentWindow
, currentWindowUnchecked
, currentDocument
, currentDocumentUnchecked
, syncPoint
, syncAfter
, waitForAnimationFrame
, nextAnimationFrame
, catch
, bracket
) where

import JSDOM.Types
       (FromJSVal(..), MonadDOM, liftDOM, Document(..), Window(..))
import Language.Javascript.JSaddle
       (syncPoint, syncAfter, waitForAnimationFrame,
        nextAnimationFrame, catch, bracket)
import Language.Javascript.JSaddle.Object (jsg)

currentWindow :: MonadDOM m => m (Maybe Window)
currentWindow = liftDOM $ jsg ("window" :: String) >>= fromJSVal

currentWindowUnchecked :: MonadDOM m => m Window
currentWindowUnchecked = liftDOM $ jsg ("window" :: String) >>= fromJSValUnchecked

currentDocument :: MonadDOM m => m (Maybe Document)
currentDocument = liftDOM $ jsg ("document" :: String) >>= fromJSVal

currentDocumentUnchecked :: MonadDOM m => m Document
currentDocumentUnchecked = liftDOM $ jsg ("document" :: String) >>= fromJSValUnchecked

