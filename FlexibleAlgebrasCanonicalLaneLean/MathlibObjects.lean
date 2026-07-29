import FlexibleAlgebrasCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib
import Mathlib.Algebra.Group.Basic

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

open HautevilleHouse.canonicalLaneMathlib

structure FlexibleAlgebraSpace where
  carrier : Type
  multiplication : carrier → carrier → carrier

structure FlexibleAlgebraWitnessObject where
  space : FlexibleAlgebraSpace
  flexibleIdentity : ∀ x y : space.carrier,
    space.multiplication (space.multiplication x y) x = space.multiplication x (space.multiplication y x)
  conclusion : flexibleIdentity

def FlexibleAlgebraWitnessClosed (O : FlexibleAlgebraWitnessObject) : Prop :=
  O.flexibleIdentity

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse
