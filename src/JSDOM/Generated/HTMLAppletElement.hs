{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLAppletElement
       (setAlign, getAlign, setAlt, getAlt, setArchive, getArchive,
        setCode, getCode, setCodeBase, getCodeBase, setHeight, getHeight,
        setHspace, getHspace, setName, getName, setObject, getObject,
        setVspace, getVspace, setWidth, getWidth, HTMLAppletElement(..),
        gTypeHTMLAppletElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.align Mozilla HTMLAppletElement.align documentation> 
setAlign ::
         (MonadDOM m, ToJSString val) => HTMLAppletElement -> val -> m ()
setAlign self val = liftDOM (self ^. jss "align" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.align Mozilla HTMLAppletElement.align documentation> 
getAlign ::
         (MonadDOM m, FromJSString result) => HTMLAppletElement -> m result
getAlign self
  = liftDOM ((self ^. js "align") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.alt Mozilla HTMLAppletElement.alt documentation> 
setAlt ::
       (MonadDOM m, ToJSString val) => HTMLAppletElement -> val -> m ()
setAlt self val = liftDOM (self ^. jss "alt" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.alt Mozilla HTMLAppletElement.alt documentation> 
getAlt ::
       (MonadDOM m, FromJSString result) => HTMLAppletElement -> m result
getAlt self = liftDOM ((self ^. js "alt") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.archive Mozilla HTMLAppletElement.archive documentation> 
setArchive ::
           (MonadDOM m, ToJSString val) => HTMLAppletElement -> val -> m ()
setArchive self val = liftDOM (self ^. jss "archive" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.archive Mozilla HTMLAppletElement.archive documentation> 
getArchive ::
           (MonadDOM m, FromJSString result) => HTMLAppletElement -> m result
getArchive self
  = liftDOM ((self ^. js "archive") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.code Mozilla HTMLAppletElement.code documentation> 
setCode ::
        (MonadDOM m, ToJSString val) => HTMLAppletElement -> val -> m ()
setCode self val = liftDOM (self ^. jss "code" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.code Mozilla HTMLAppletElement.code documentation> 
getCode ::
        (MonadDOM m, FromJSString result) => HTMLAppletElement -> m result
getCode self = liftDOM ((self ^. js "code") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.codeBase Mozilla HTMLAppletElement.codeBase documentation> 
setCodeBase ::
            (MonadDOM m, ToJSString val) => HTMLAppletElement -> val -> m ()
setCodeBase self val
  = liftDOM (self ^. jss "codeBase" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.codeBase Mozilla HTMLAppletElement.codeBase documentation> 
getCodeBase ::
            (MonadDOM m, FromJSString result) => HTMLAppletElement -> m result
getCodeBase self
  = liftDOM ((self ^. js "codeBase") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.height Mozilla HTMLAppletElement.height documentation> 
setHeight ::
          (MonadDOM m, ToJSString val) => HTMLAppletElement -> val -> m ()
setHeight self val = liftDOM (self ^. jss "height" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.height Mozilla HTMLAppletElement.height documentation> 
getHeight ::
          (MonadDOM m, FromJSString result) => HTMLAppletElement -> m result
getHeight self
  = liftDOM ((self ^. js "height") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.hspace Mozilla HTMLAppletElement.hspace documentation> 
setHspace :: (MonadDOM m) => HTMLAppletElement -> Word -> m ()
setHspace self val = liftDOM (self ^. jss "hspace" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.hspace Mozilla HTMLAppletElement.hspace documentation> 
getHspace :: (MonadDOM m) => HTMLAppletElement -> m Word
getHspace self
  = liftDOM (round <$> ((self ^. js "hspace") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.name Mozilla HTMLAppletElement.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => HTMLAppletElement -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.name Mozilla HTMLAppletElement.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => HTMLAppletElement -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.object Mozilla HTMLAppletElement.object documentation> 
setObject ::
          (MonadDOM m, ToJSString val) => HTMLAppletElement -> val -> m ()
setObject self val = liftDOM (self ^. jss "object" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.object Mozilla HTMLAppletElement.object documentation> 
getObject ::
          (MonadDOM m, FromJSString result) => HTMLAppletElement -> m result
getObject self
  = liftDOM ((self ^. js "object") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.vspace Mozilla HTMLAppletElement.vspace documentation> 
setVspace :: (MonadDOM m) => HTMLAppletElement -> Word -> m ()
setVspace self val = liftDOM (self ^. jss "vspace" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.vspace Mozilla HTMLAppletElement.vspace documentation> 
getVspace :: (MonadDOM m) => HTMLAppletElement -> m Word
getVspace self
  = liftDOM (round <$> ((self ^. js "vspace") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.width Mozilla HTMLAppletElement.width documentation> 
setWidth ::
         (MonadDOM m, ToJSString val) => HTMLAppletElement -> val -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.width Mozilla HTMLAppletElement.width documentation> 
getWidth ::
         (MonadDOM m, FromJSString result) => HTMLAppletElement -> m result
getWidth self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)
