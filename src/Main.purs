module Main
  ( main 
  )
  where

import Prelude

import Aff (testAff)
import Control.Monad.State (evalStateT)
import Control.Monad.State as S
import Data.Aff2 (liftEffect, test)
import Data.Either (Either)
import Effect (Effect)
import Effect.Aff (Aff, Error, launchAff, launchAff_, try)
import Effect.Aff.AVar (new)
import Effect2 (test1)
import Flow (flow)
import FreeMonad (runFMonad, test3)
import MonadExample (test2)
import OptimizedMonadExample (runOPMonad, test5)
import Presto.Core.Language.Runtime.Interpreter (PermissionRunner(..), Runtime(..), run)
import Presto.Core.Types.Language.Flow (Flow, defaultState)
import Presto.Core.Types.Permission (PermissionStatus(..))
import StateTAff (testEvalStateTAff)
import StateTEffect (testEvalStateTEff)
import Unsafe.Coerce (unsafeCoerce)

foreign import myLog :: String -> Effect String

-- This is main
main ∷ Effect Unit
main = 
  case "Effect" of
    "Aff" -> launchAff_ testAff
    "Aff2" -> test
    "Effect" -> test1
    "FreeMonad" -> runFMonad test3
    "MonadLikeEffect" -> unsafeCoerce test2
    "OptimisedMonadEffect" -> pure $ runOPMonad test5
    "StateTEff" -> evalStateT testEvalStateTEff {}
    "StateTAff" -> launchAff_ $ evalStateT testEvalStateTAff {} 
    "Flow" ->  do
      _ <- launchAff $ flowRunner unit flow 
      pure unit
    _ -> pure unit

flowRunner :: forall a st. st -> Flow st a -> Aff (Either Error a)
flowRunner state flow = do
  let runtime = Runtime pure (PermissionRunner (const $ pure PermissionGranted) (const $ pure [])) (const $ pure $ unsafeCoerce unit)
  let freeFlow = S.evalStateT (run runtime flow)
  try $ new (defaultState state) >>= freeFlow
