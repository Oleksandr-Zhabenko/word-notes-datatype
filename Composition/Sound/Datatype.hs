-- |
-- Module      :  Composition.Sound.Datatype 
-- Copyright   :  (c) OleksandrZhabenko 2024
-- License     :  MIT
-- Stability   :  Experimental
-- Maintainer  :  oleksandr.zhabenko@yahoo.com
--
-- Inspired by the video by the link:
-- https://www.youtube.com/watch?v=rhgt3lZ1RUU

-- {-# OPTIONS_GHC -funbox-strict-fields #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Composition.Sound.Datatype 


where

import GHC.Base
import Text.Show
import Text.Read

{-| A most general datatype that is intended to represent an excerpt of a part of a musical instrument through the entire work. The values with equal 'group' belong to the one music phrase. 'freepars' are used to classify musical work and to provide general creative intentions for it. Usually it is a complex datatype with some inner structure so that it can be used efficiently and creatively enough.
 
-}
data Instrument a b c d e f g = Ins {
  group :: a,
  notedata :: b,
  timing :: c,
  parallel :: d,
  modulation :: e,
  specifics :: f,
  freepars :: g
} deriving (Eq, Show, Read) 

-- | Is intended to be generally used as 'notedata' from the 'Instrument'.
data Notedata a = Note a | Inter a a | Chord a a a | Chord7 a a a a | Chord9 a a a a a |  Chord11 a a a a a a deriving (Eq, Read, Show) 

-- | Is intended to be generally used as 'parallel' from the 'Instrument' e. g. for the solo piano musical work.
data ParallelClassic a = LeftPar a | RightPar a | LeftSeq a | RightSeq a deriving (Eq, Read, Show) 


