module JSDOM.EventTargetClosures
  ( EventName(..)
  , SaferEventListener(..)
  , eventNameString
  , unsafeEventName
  , unsafeEventNameAsync
  , eventListenerNew
  , eventListenerNewSync
  , eventListenerNewAsync
  , eventListenerRelease) where

import Control.Applicative ((<$>))
import JSDOM.Types
import Language.Javascript.JSaddle as JSaddle (function, asyncFunction, JSM, Function(..), freeFunction)

data EventName t e = EventNameSyncDefault DOMString | EventNameAsyncDefault DOMString

eventNameString :: EventName t e -> DOMString
eventNameString (EventNameSyncDefault s) = s
eventNameString (EventNameAsyncDefault s) = s

newtype SaferEventListener t e = SaferEventListener JSaddle.Function

instance ToJSVal (SaferEventListener t e) where
    toJSVal (SaferEventListener l) = toJSVal l
    {-# INLINE toJSVal #-}

--instance FromJSVal (SaferEventListener t e) where
--    fromJSVal l = fmap SaferEventListener <$> fromJSVal l
--    {-# INLINE fromJSVal #-}

unsafeEventName :: DOMString -> EventName t e
unsafeEventName = EventNameSyncDefault

unsafeEventNameAsync :: DOMString -> EventName t e
unsafeEventNameAsync = EventNameAsyncDefault

eventListenerNew :: (IsEvent e) => (e -> JSM ()) -> JSM (SaferEventListener t e)
eventListenerNew callback = SaferEventListener <$> function (\_ _ [e] -> fromJSValUnchecked e >>= callback)

eventListenerNewSync :: (IsEvent e) => (e -> JSM ()) -> JSM (SaferEventListener t e)
eventListenerNewSync callback = SaferEventListener <$> function (\_ _ [e] -> fromJSValUnchecked e >>= callback)

eventListenerNewAsync :: (IsEvent e) => (e -> JSM ()) -> JSM (SaferEventListener t e)
eventListenerNewAsync callback = SaferEventListener <$> asyncFunction (\_ _ [e] -> fromJSValUnchecked e >>= callback)

eventListenerRelease :: SaferEventListener t e -> JSM ()
eventListenerRelease (SaferEventListener f) = freeFunction f
