module JSDOM.Custom.FormData(
    module Generated,
    newFormData
) where

import Prelude ()
import Prelude.Compat

import JSDOM.Types
import Data.Maybe (mapMaybe)
import Language.Javascript.JSaddle (toJSVal, jsg, new)

import JSDOM.Generated.FormData as Generated hiding (newFormData)


-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData Mozilla FormData documentation> 
newFormData :: (MonadDOM m) => Maybe HTMLFormElement -> m FormData
newFormData form
  = liftDOM (FormData <$> new (jsg "FormData") (mapMaybe (fmap toJSVal) [form]))
