module Lens
  ( module Distribution.Compat.Lens,
    mapped,
    (|>),
    (<&>),
  )
where

import Data.Functor ((<&>))
import Data.Functor.Identity (Identity (..))
import Distribution.Compat.Lens

mapped :: Functor f => ASetter (f a) (f b) a b
mapped k = Identity . fmap (runIdentity . k)

-- qwq
(|>) :: a -> (a -> b) -> b
(|>) = (&)