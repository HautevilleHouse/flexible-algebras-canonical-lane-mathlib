import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure JordanIdentityPackage where
  algebra : Type u
  mul : algebra → algebra → algebra
  commutative : ∀ x y, mul x y = mul y x
  flexibleLaw : ∀ x y, mul (mul x y) x = mul x (mul y x)

structure JordanIdentityEvidence (P : JordanIdentityPackage) where
  commutativeClosed : P.commutative
  flexibleLawClosed : P.flexibleLaw

def JordanIdentityClosed (P : JordanIdentityPackage) : Prop :=
  P.commutative ∧ P.flexibleLaw

theorem jordan_identity_closed_from_evidence (P : JordanIdentityPackage)
    (E : JordanIdentityEvidence P) : JordanIdentityClosed P := by
  exact And.intro E.commutativeClosed E.flexibleLawClosed

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse