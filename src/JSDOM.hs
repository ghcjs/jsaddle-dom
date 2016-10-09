{-# LANGUAGE OverloadedStrings, PatternSynonyms #-}
module JSDOM (
  currentWindow
, currentDocument
, run
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
       (run, syncPoint, syncAfter, waitForAnimationFrame,
        nextAnimationFrame, catch, bracket)
import Language.Javascript.JSaddle.Object (jsg)

currentWindow :: MonadDOM m => m (Maybe Window)
currentWindow = liftDOM $ jsg ("window" :: String) >>= fromJSVal

currentDocument :: MonadDOM m => m (Maybe Document)
currentDocument = liftDOM $ jsg ("document" :: String) >>= fromJSVal

