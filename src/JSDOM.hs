{-# LANGUAGE OverloadedStrings, PatternSynonyms #-}
module JSDOM (
  currentWindow
, currentDocument
, run
) where

import JSDOM.Types
       (FromJSVal(..), MonadDOM(..), Document(..), Window(..))
import Language.Javascript.JSaddle (run)
import Language.Javascript.JSaddle.Object (jsg)

currentWindow :: MonadDOM m => m (Maybe Window)
currentWindow = liftDOM $ jsg ("window" :: String) >>= fromJSVal

currentDocument :: MonadDOM m => m (Maybe Document)
currentDocument = liftDOM $ jsg ("document" :: String) >>= fromJSVal

