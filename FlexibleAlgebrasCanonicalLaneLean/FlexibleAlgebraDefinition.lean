import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure FlexibleAlgebra (R : Type) [CommRing R] where
  carrier : Type
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  smul : R → carrier → carrier
  addAssoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  addComm : ∀ a b : carrier, add a b = add b a
  addZero : ∀ a : carrier, add a (addZeroElement a) = a
  addInv : ∀ a : carrier, ∃ b : carrier, add a b = addZeroElement a
  mulAssoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  leftDistrib : ∀ a b c : carrier, mul a (add b c) = add (mul a b) (mul a c)
  rightDistrib : ∀ a b c : carrier, mul (add a b) c = add (mul a c) (mul b c)
  smulAssoc : ∀ (r s : R) (a : carrier), smul (r * s) a = smul r (smul s a)
  smulAdd : ∀ (r : R) (a b : carrier), smul r (add a b) = add (smul r a) (smul r b)
  addSmul : ∀ (r s : R) (a : carrier), smul (r + s) a = add (smul r a) (smul s a)
  oneSmul : ∀ a : carrier, smul 1 a = a
  addZeroElement : carrier
  flexibleIdentity : ∀ a b c : carrier,
    mul (mul a b) c = mul a (mul b c) ∧ mul (mul a b) c = mul (mul a c) b

def FlexibleAlgebraAdmissible (R : Type) [CommRing R] (A : FlexibleAlgebra R) : Prop :=
  ∀ a b c : A.carrier,
    A.mul (A.mul a b) c = A.mul a (A.mul b c) ∧
    A.mul (A.mul a b) c = A.mul (A.mul a c) b

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse
