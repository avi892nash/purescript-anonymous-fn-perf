module Async where

import Prelude

import Effect.Class (class MonadEffect, liftEffect)
import Effect.Console (log)
import Effect.Unsafe (unsafePerformEffect)


data Async a 
  = Await (Async a)
  | Pure a



instance Functor Async where
  map f (Pure eff) = Pure (f eff)
  map f (Await eff) = Await (map f eff)
  
instance Apply Async where
   apply (Await f) (Await eff) = Await (apply f eff)
   apply (Await f) (Pure eff) = Await (apply f (Pure eff))
   apply (Pure f) (Await eff) = Await (apply (Pure f) eff)
   apply (Pure f) (Pure eff) = Pure (f eff)
   
   
instance applicativeMonad :: Applicative Async where
   pure = Pure 
   
instance bindMonadExample :: Bind Async where
  bind (Await eff) f = bind eff f 
  bind (Pure eff) f = f eff


instance monadExampleE :: Monad Async 

instance MonadEffect Async where
  liftEffect = Pure <<< unsafePerformEffect

test2 :: Async String
test2 = do
  liftEffect $ log "rieeii"
  liftEffect $ log "temp"
  -- _ <- 
  Pure "Verma"

test :: Async Unit
test = do
  liftEffect $ log "Aviansh"
  Pure unit
  s <- Await test2
  Pure unit