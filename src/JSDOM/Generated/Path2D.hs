{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Path2D
       (newPath2D, newPath2D', newPath2D'', addPath, addPathWithTransform,
        Path2D(..), gTypePath2D)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation> 
newPath2D :: (MonadDOM m) => m Path2D
newPath2D = liftDOM (Path2D <$> new (jsg "Path2D") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation> 
newPath2D' :: (MonadDOM m) => Path2D -> m Path2D
newPath2D' path
  = liftDOM (Path2D <$> new (jsg "Path2D") [toJSVal path])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation> 
newPath2D'' :: (MonadDOM m, ToJSString text) => text -> m Path2D
newPath2D'' text
  = liftDOM (Path2D <$> new (jsg "Path2D") [toJSVal text])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.addPath Mozilla Path2D.addPath documentation> 
addPath :: (MonadDOM m) => Path2D -> Maybe Path2D -> m ()
addPath self path
  = liftDOM (void (self ^. jsf "addPath" [toJSVal path]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.addPath Mozilla Path2D.addPath documentation> 
addPathWithTransform ::
                     (MonadDOM m) => Path2D -> Maybe Path2D -> SVGMatrix -> m ()
addPathWithTransform self path transform
  = liftDOM
      (void (self ^. jsf "addPath" [toJSVal path, toJSVal transform]))
