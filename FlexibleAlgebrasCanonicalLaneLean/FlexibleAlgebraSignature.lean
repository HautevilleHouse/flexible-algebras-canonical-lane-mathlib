import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure FlexibleAlgebraSignature where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  associativeAddition : Prop
  commutativeAddition : Prop
  additiveIdentity : ∀ a : carrier, addition a zero = a ∧ addition zero a = a
  additiveInverse : ∀ a : carrier, ∃ b : carrier, addition a b = zero ∧ addition b a = zero
  distribLeft : ∀ a b c : carrier, multiplication a (addition b c) = addition (multiplication a b) (multiplication a c)
  distribRight : ∀ a b c : carrier, multiplication (addition a b) c = addition (multiplication a c) (multiplication b c)
  flexIdentity : ∀ a b : carrier, multiplication a (multiplication b a) = multiplication (multiplication a b) a

def flexibleAlgebraSignatureClosed (S : FlexibleAlgebraSignature) : Prop :=
  S.associativeAddition ∧ S.commutativeAddition ∧
  (∀ a : S.carrier, S.additiveIdentity a) ∧
  (∀ a : S.carrier, S.additiveInverse a) ∧
  (∀ a b c : S.carrier, S.distribLeft a b c) ∧
  (∀ a b c : S.carrier, S.distribRight a b c) ∧
  (∀ a b : S.carrier, S.flexIdentity a b)

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse