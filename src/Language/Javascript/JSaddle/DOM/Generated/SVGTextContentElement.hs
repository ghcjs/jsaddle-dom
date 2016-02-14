{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.SVGTextContentElement
       (getNumberOfChars, getComputedTextLength, getSubStringLength,
        getStartPositionOfChar, getEndPositionOfChar, getExtentOfChar,
        getRotationOfChar, getCharNumAtPosition, selectSubString,
        pattern LENGTHADJUST_UNKNOWN, pattern LENGTHADJUST_SPACING,
        pattern LENGTHADJUST_SPACINGANDGLYPHS, getTextLength,
        getLengthAdjust, SVGTextContentElement,
        castToSVGTextContentElement, gTypeSVGTextContentElement,
        IsSVGTextContentElement, toSVGTextContentElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getNumberOfChars Mozilla SVGTextContentElement.getNumberOfChars documentation> 
getNumberOfChars ::
                 (MonadDOM m, IsSVGTextContentElement self) => self -> m Int
getNumberOfChars self
  = liftDOM
      (round <$>
         (((toSVGTextContentElement self) ^. js "getNumberOfChars") >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getComputedTextLength Mozilla SVGTextContentElement.getComputedTextLength documentation> 
getComputedTextLength ::
                      (MonadDOM m, IsSVGTextContentElement self) => self -> m Float
getComputedTextLength self
  = liftDOM
      (realToFrac <$>
         (((toSVGTextContentElement self) ^. js "getComputedTextLength") >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getSubStringLength Mozilla SVGTextContentElement.getSubStringLength documentation> 
getSubStringLength ::
                   (MonadDOM m, IsSVGTextContentElement self) =>
                     self -> Word -> Word -> m Float
getSubStringLength self offset length
  = liftDOM
      (realToFrac <$>
         (((toSVGTextContentElement self) ^. jsf "getSubStringLength"
             [toJSVal offset, toJSVal length])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getStartPositionOfChar Mozilla SVGTextContentElement.getStartPositionOfChar documentation> 
getStartPositionOfChar ::
                       (MonadDOM m, IsSVGTextContentElement self) =>
                         self -> Word -> m (Maybe SVGPoint)
getStartPositionOfChar self offset
  = liftDOM
      (((toSVGTextContentElement self) ^. jsf "getStartPositionOfChar"
          [toJSVal offset])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getEndPositionOfChar Mozilla SVGTextContentElement.getEndPositionOfChar documentation> 
getEndPositionOfChar ::
                     (MonadDOM m, IsSVGTextContentElement self) =>
                       self -> Word -> m (Maybe SVGPoint)
getEndPositionOfChar self offset
  = liftDOM
      (((toSVGTextContentElement self) ^. jsf "getEndPositionOfChar"
          [toJSVal offset])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getExtentOfChar Mozilla SVGTextContentElement.getExtentOfChar documentation> 
getExtentOfChar ::
                (MonadDOM m, IsSVGTextContentElement self) =>
                  self -> Word -> m (Maybe SVGRect)
getExtentOfChar self offset
  = liftDOM
      (((toSVGTextContentElement self) ^. jsf "getExtentOfChar"
          [toJSVal offset])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getRotationOfChar Mozilla SVGTextContentElement.getRotationOfChar documentation> 
getRotationOfChar ::
                  (MonadDOM m, IsSVGTextContentElement self) =>
                    self -> Word -> m Float
getRotationOfChar self offset
  = liftDOM
      (realToFrac <$>
         (((toSVGTextContentElement self) ^. jsf "getRotationOfChar"
             [toJSVal offset])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getCharNumAtPosition Mozilla SVGTextContentElement.getCharNumAtPosition documentation> 
getCharNumAtPosition ::
                     (MonadDOM m, IsSVGTextContentElement self) =>
                       self -> Maybe SVGPoint -> m Int
getCharNumAtPosition self point
  = liftDOM
      (round <$>
         (((toSVGTextContentElement self) ^. jsf "getCharNumAtPosition"
             [toJSVal point])
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.selectSubString Mozilla SVGTextContentElement.selectSubString documentation> 
selectSubString ::
                (MonadDOM m, IsSVGTextContentElement self) =>
                  self -> Word -> Word -> m ()
selectSubString self offset length
  = liftDOM
      (void
         ((toSVGTextContentElement self) ^. jsf "selectSubString"
            [toJSVal offset, toJSVal length]))
pattern LENGTHADJUST_UNKNOWN = 0
pattern LENGTHADJUST_SPACING = 1
pattern LENGTHADJUST_SPACINGANDGLYPHS = 2

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.textLength Mozilla SVGTextContentElement.textLength documentation> 
getTextLength ::
              (MonadDOM m, IsSVGTextContentElement self) =>
                self -> m (Maybe SVGAnimatedLength)
getTextLength self
  = liftDOM
      (((toSVGTextContentElement self) ^. js "textLength") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.lengthAdjust Mozilla SVGTextContentElement.lengthAdjust documentation> 
getLengthAdjust ::
                (MonadDOM m, IsSVGTextContentElement self) =>
                  self -> m (Maybe SVGAnimatedEnumeration)
getLengthAdjust self
  = liftDOM
      (((toSVGTextContentElement self) ^. js "lengthAdjust") >>=
         fromJSVal)