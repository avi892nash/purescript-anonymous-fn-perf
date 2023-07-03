module Avinash where

import Prelude

import Effect (Effect)
import Effect.Class (class MonadEffect)



data MonadExample a = MonadExample (Effect a)


instance functorMonad :: Functor MonadExample where
  map f (MonadExample eff) = MonadExample (map f eff)
  
instance applyMonad :: Apply MonadExample where
   apply (MonadExample f) (MonadExample eff) = MonadExample (apply f eff)
   
instance applicativeMonad :: Applicative MonadExample where
   pure eff = MonadExample (pure eff)
   
instance bindMonadExample :: Bind MonadExample where
  bind (MonadExample eff) f = MonadExample do
                                  x <- eff
                                  case f x of
                                    MonadExample eff' -> eff'

instance MonadEffect MonadExample where
  liftEffect a = MonadExample a

instance monadExampleE :: Monad MonadExample 

runMonadEffect (MonadExample a) = a