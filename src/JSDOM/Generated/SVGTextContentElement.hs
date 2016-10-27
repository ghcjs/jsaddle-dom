{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGTextContentElement
       (getNumberOfChars, getNumberOfChars_, getComputedTextLength,
        getComputedTextLength_, getSubStringLength, getSubStringLength_,
        getStartPositionOfChar, getStartPositionOfChar_,
        getStartPositionOfCharUnsafe, getStartPositionOfCharUnchecked,
        getEndPositionOfChar, getEndPositionOfChar_,
        getEndPositionOfCharUnsafe, getEndPositionOfCharUnchecked,
        getExtentOfChar, getExtentOfChar_, getExtentOfCharUnsafe,
        getExtentOfCharUnchecked, getRotationOfChar, getRotationOfChar_,
        getCharNumAtPosition, getCharNumAtPosition_, selectSubString,
        pattern LENGTHADJUST_UNKNOWN, pattern LENGTHADJUST_SPACING,
        pattern LENGTHADJUST_SPACINGANDGLYPHS, getTextLength,
        getTextLengthUnsafe, getTextLengthUnchecked, getLengthAdjust,
        getLengthAdjustUnsafe, getLengthAdjustUnchecked,
        SVGTextContentElement(..), gTypeSVGTextContentElement,
        IsSVGTextContentElement, toSVGTextContentElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getNumberOfChars Mozilla SVGTextContentElement.getNumberOfChars documentation> 
getNumberOfChars ::
                 (MonadDOM m, IsSVGTextContentElement self) => self -> m Int
getNumberOfChars self
  = liftDOM
      (round <$>
         (((toSVGTextContentElement self) ^. jsf "getNumberOfChars" ()) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getNumberOfChars Mozilla SVGTextContentElement.getNumberOfChars documentation> 
getNumberOfChars_ ::
                  (MonadDOM m, IsSVGTextContentElement self) => self -> m ()
getNumberOfChars_ self
  = liftDOM
      (void
         ((toSVGTextContentElement self) ^. jsf "getNumberOfChars" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getComputedTextLength Mozilla SVGTextContentElement.getComputedTextLength documentation> 
getComputedTextLength ::
                      (MonadDOM m, IsSVGTextContentElement self) => self -> m Float
getComputedTextLength self
  = liftDOM
      (realToFrac <$>
         (((toSVGTextContentElement self) ^. jsf "getComputedTextLength" ())
            >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getComputedTextLength Mozilla SVGTextContentElement.getComputedTextLength documentation> 
getComputedTextLength_ ::
                       (MonadDOM m, IsSVGTextContentElement self) => self -> m ()
getComputedTextLength_ self
  = liftDOM
      (void
         ((toSVGTextContentElement self) ^. jsf "getComputedTextLength" ()))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getSubStringLength Mozilla SVGTextContentElement.getSubStringLength documentation> 
getSubStringLength_ ::
                    (MonadDOM m, IsSVGTextContentElement self) =>
                      self -> Word -> Word -> m ()
getSubStringLength_ self offset length
  = liftDOM
      (void
         ((toSVGTextContentElement self) ^. jsf "getSubStringLength"
            [toJSVal offset, toJSVal length]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getStartPositionOfChar Mozilla SVGTextContentElement.getStartPositionOfChar documentation> 
getStartPositionOfChar ::
                       (MonadDOM m, IsSVGTextContentElement self) =>
                         self -> Word -> m (Maybe SVGPoint)
getStartPositionOfChar self offset
  = liftDOM
      (((toSVGTextContentElement self) ^. jsf "getStartPositionOfChar"
          [toJSVal offset])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getStartPositionOfChar Mozilla SVGTextContentElement.getStartPositionOfChar documentation> 
getStartPositionOfChar_ ::
                        (MonadDOM m, IsSVGTextContentElement self) => self -> Word -> m ()
getStartPositionOfChar_ self offset
  = liftDOM
      (void
         ((toSVGTextContentElement self) ^. jsf "getStartPositionOfChar"
            [toJSVal offset]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getStartPositionOfChar Mozilla SVGTextContentElement.getStartPositionOfChar documentation> 
getStartPositionOfCharUnsafe ::
                             (MonadDOM m, IsSVGTextContentElement self, HasCallStack) =>
                               self -> Word -> m SVGPoint
getStartPositionOfCharUnsafe self offset
  = liftDOM
      ((((toSVGTextContentElement self) ^. jsf "getStartPositionOfChar"
           [toJSVal offset])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getStartPositionOfChar Mozilla SVGTextContentElement.getStartPositionOfChar documentation> 
getStartPositionOfCharUnchecked ::
                                (MonadDOM m, IsSVGTextContentElement self) =>
                                  self -> Word -> m SVGPoint
getStartPositionOfCharUnchecked self offset
  = liftDOM
      (((toSVGTextContentElement self) ^. jsf "getStartPositionOfChar"
          [toJSVal offset])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getEndPositionOfChar Mozilla SVGTextContentElement.getEndPositionOfChar documentation> 
getEndPositionOfChar ::
                     (MonadDOM m, IsSVGTextContentElement self) =>
                       self -> Word -> m (Maybe SVGPoint)
getEndPositionOfChar self offset
  = liftDOM
      (((toSVGTextContentElement self) ^. jsf "getEndPositionOfChar"
          [toJSVal offset])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getEndPositionOfChar Mozilla SVGTextContentElement.getEndPositionOfChar documentation> 
getEndPositionOfChar_ ::
                      (MonadDOM m, IsSVGTextContentElement self) => self -> Word -> m ()
getEndPositionOfChar_ self offset
  = liftDOM
      (void
         ((toSVGTextContentElement self) ^. jsf "getEndPositionOfChar"
            [toJSVal offset]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getEndPositionOfChar Mozilla SVGTextContentElement.getEndPositionOfChar documentation> 
getEndPositionOfCharUnsafe ::
                           (MonadDOM m, IsSVGTextContentElement self, HasCallStack) =>
                             self -> Word -> m SVGPoint
getEndPositionOfCharUnsafe self offset
  = liftDOM
      ((((toSVGTextContentElement self) ^. jsf "getEndPositionOfChar"
           [toJSVal offset])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getEndPositionOfChar Mozilla SVGTextContentElement.getEndPositionOfChar documentation> 
getEndPositionOfCharUnchecked ::
                              (MonadDOM m, IsSVGTextContentElement self) =>
                                self -> Word -> m SVGPoint
getEndPositionOfCharUnchecked self offset
  = liftDOM
      (((toSVGTextContentElement self) ^. jsf "getEndPositionOfChar"
          [toJSVal offset])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getExtentOfChar Mozilla SVGTextContentElement.getExtentOfChar documentation> 
getExtentOfChar ::
                (MonadDOM m, IsSVGTextContentElement self) =>
                  self -> Word -> m (Maybe SVGRect)
getExtentOfChar self offset
  = liftDOM
      (((toSVGTextContentElement self) ^. jsf "getExtentOfChar"
          [toJSVal offset])
         >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getExtentOfChar Mozilla SVGTextContentElement.getExtentOfChar documentation> 
getExtentOfChar_ ::
                 (MonadDOM m, IsSVGTextContentElement self) => self -> Word -> m ()
getExtentOfChar_ self offset
  = liftDOM
      (void
         ((toSVGTextContentElement self) ^. jsf "getExtentOfChar"
            [toJSVal offset]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getExtentOfChar Mozilla SVGTextContentElement.getExtentOfChar documentation> 
getExtentOfCharUnsafe ::
                      (MonadDOM m, IsSVGTextContentElement self, HasCallStack) =>
                        self -> Word -> m SVGRect
getExtentOfCharUnsafe self offset
  = liftDOM
      ((((toSVGTextContentElement self) ^. jsf "getExtentOfChar"
           [toJSVal offset])
          >>= fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getExtentOfChar Mozilla SVGTextContentElement.getExtentOfChar documentation> 
getExtentOfCharUnchecked ::
                         (MonadDOM m, IsSVGTextContentElement self) =>
                           self -> Word -> m SVGRect
getExtentOfCharUnchecked self offset
  = liftDOM
      (((toSVGTextContentElement self) ^. jsf "getExtentOfChar"
          [toJSVal offset])
         >>= fromJSValUnchecked)

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getRotationOfChar Mozilla SVGTextContentElement.getRotationOfChar documentation> 
getRotationOfChar_ ::
                   (MonadDOM m, IsSVGTextContentElement self) => self -> Word -> m ()
getRotationOfChar_ self offset
  = liftDOM
      (void
         ((toSVGTextContentElement self) ^. jsf "getRotationOfChar"
            [toJSVal offset]))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.getCharNumAtPosition Mozilla SVGTextContentElement.getCharNumAtPosition documentation> 
getCharNumAtPosition_ ::
                      (MonadDOM m, IsSVGTextContentElement self) =>
                        self -> Maybe SVGPoint -> m ()
getCharNumAtPosition_ self point
  = liftDOM
      (void
         ((toSVGTextContentElement self) ^. jsf "getCharNumAtPosition"
            [toJSVal point]))

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.textLength Mozilla SVGTextContentElement.textLength documentation> 
getTextLengthUnsafe ::
                    (MonadDOM m, IsSVGTextContentElement self, HasCallStack) =>
                      self -> m SVGAnimatedLength
getTextLengthUnsafe self
  = liftDOM
      ((((toSVGTextContentElement self) ^. js "textLength") >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.textLength Mozilla SVGTextContentElement.textLength documentation> 
getTextLengthUnchecked ::
                       (MonadDOM m, IsSVGTextContentElement self) =>
                         self -> m SVGAnimatedLength
getTextLengthUnchecked self
  = liftDOM
      (((toSVGTextContentElement self) ^. js "textLength") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.lengthAdjust Mozilla SVGTextContentElement.lengthAdjust documentation> 
getLengthAdjust ::
                (MonadDOM m, IsSVGTextContentElement self) =>
                  self -> m (Maybe SVGAnimatedEnumeration)
getLengthAdjust self
  = liftDOM
      (((toSVGTextContentElement self) ^. js "lengthAdjust") >>=
         fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.lengthAdjust Mozilla SVGTextContentElement.lengthAdjust documentation> 
getLengthAdjustUnsafe ::
                      (MonadDOM m, IsSVGTextContentElement self, HasCallStack) =>
                        self -> m SVGAnimatedEnumeration
getLengthAdjustUnsafe self
  = liftDOM
      ((((toSVGTextContentElement self) ^. js "lengthAdjust") >>=
          fromJSVal)
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextContentElement.lengthAdjust Mozilla SVGTextContentElement.lengthAdjust documentation> 
getLengthAdjustUnchecked ::
                         (MonadDOM m, IsSVGTextContentElement self) =>
                           self -> m SVGAnimatedEnumeration
getLengthAdjustUnchecked self
  = liftDOM
      (((toSVGTextContentElement self) ^. js "lengthAdjust") >>=
         fromJSValUnchecked)
