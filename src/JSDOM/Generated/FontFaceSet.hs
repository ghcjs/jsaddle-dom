{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.FontFaceSet
       (newFontFaceSet, has, has_, add, add_, delete, delete_, clear,
        load, load_, check, check_, getSize, loading, loadingDone,
        loadingerror, getReady, getStatus, FontFaceSet(..),
        gTypeFontFaceSet)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet Mozilla FontFaceSet documentation> 
newFontFaceSet :: (MonadDOM m) => [FontFace] -> m FontFaceSet
newFontFaceSet initialFaces
  = liftDOM
      (FontFaceSet <$>
         new (jsg "FontFaceSet") [toJSVal (array initialFaces)])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.has Mozilla FontFaceSet.has documentation> 
has :: (MonadDOM m) => FontFaceSet -> FontFace -> m Bool
has self font
  = liftDOM ((self ^. jsf "has" [toJSVal font]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.has Mozilla FontFaceSet.has documentation> 
has_ :: (MonadDOM m) => FontFaceSet -> FontFace -> m ()
has_ self font = liftDOM (void (self ^. jsf "has" [toJSVal font]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.add Mozilla FontFaceSet.add documentation> 
add :: (MonadDOM m) => FontFaceSet -> FontFace -> m FontFaceSet
add self font
  = liftDOM
      ((self ^. jsf "add" [toJSVal font]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.add Mozilla FontFaceSet.add documentation> 
add_ :: (MonadDOM m) => FontFaceSet -> FontFace -> m ()
add_ self font = liftDOM (void (self ^. jsf "add" [toJSVal font]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.delete Mozilla FontFaceSet.delete documentation> 
delete :: (MonadDOM m) => FontFaceSet -> FontFace -> m Bool
delete self font
  = liftDOM ((self ^. jsf "delete" [toJSVal font]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.delete Mozilla FontFaceSet.delete documentation> 
delete_ :: (MonadDOM m) => FontFaceSet -> FontFace -> m ()
delete_ self font
  = liftDOM (void (self ^. jsf "delete" [toJSVal font]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.clear Mozilla FontFaceSet.clear documentation> 
clear :: (MonadDOM m) => FontFaceSet -> m ()
clear self = liftDOM (void (self ^. jsf "clear" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.load Mozilla FontFaceSet.load documentation> 
load ::
     (MonadDOM m, ToJSString font, ToJSString text) =>
       FontFaceSet -> font -> Maybe text -> m [FontFace]
load self font text
  = liftDOM
      (((self ^. jsf "load" [toJSVal font, toJSVal text]) >>=
          readPromise)
         >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.load Mozilla FontFaceSet.load documentation> 
load_ ::
      (MonadDOM m, ToJSString font, ToJSString text) =>
        FontFaceSet -> font -> Maybe text -> m ()
load_ self font text
  = liftDOM (void (self ^. jsf "load" [toJSVal font, toJSVal text]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.check Mozilla FontFaceSet.check documentation> 
check ::
      (MonadDOM m, ToJSString font, ToJSString text) =>
        FontFaceSet -> font -> Maybe text -> m Bool
check self font text
  = liftDOM
      ((self ^. jsf "check" [toJSVal font, toJSVal text]) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.check Mozilla FontFaceSet.check documentation> 
check_ ::
       (MonadDOM m, ToJSString font, ToJSString text) =>
         FontFaceSet -> font -> Maybe text -> m ()
check_ self font text
  = liftDOM (void (self ^. jsf "check" [toJSVal font, toJSVal text]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.size Mozilla FontFaceSet.size documentation> 
getSize :: (MonadDOM m) => FontFaceSet -> m Int
getSize self
  = liftDOM (round <$> ((self ^. js "size") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.onloading Mozilla FontFaceSet.onloading documentation> 
loading :: EventName FontFaceSet Event
loading = unsafeEventName (toJSString "loading")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.onloadingdone Mozilla FontFaceSet.onloadingdone documentation> 
loadingDone :: EventName FontFaceSet Event
loadingDone = unsafeEventName (toJSString "loadingdone")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.onloadingerror Mozilla FontFaceSet.onloadingerror documentation> 
loadingerror :: EventName FontFaceSet onloadingerror
loadingerror = unsafeEventName (toJSString "loadingerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.ready Mozilla FontFaceSet.ready documentation> 
getReady :: (MonadDOM m) => FontFaceSet -> m FontFaceSet
getReady self
  = liftDOM
      (((self ^. js "ready") >>= readPromise) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FontFaceSet.status Mozilla FontFaceSet.status documentation> 
getStatus :: (MonadDOM m) => FontFaceSet -> m FontFaceSetLoadStatus
getStatus self
  = liftDOM ((self ^. js "status") >>= fromJSValUnchecked)
