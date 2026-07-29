import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure FlexibleIdentityPackage where
  underlyingAlgebra : Type u
  multiplication : underlyingAlgebra → underlyingAlgebra → underlyingAlgebra
  identityElement : underlyingAlgebra
  leftIdentity : ∀ x, multiplication identityElement x = x
  rightIdentity : ∀ x, multiplication x identityElement = x

structure FlexibleIdentityEvidence (P : FlexibleIdentityPackage) where
  leftIdentityClosed : P.leftIdentity
  rightIdentityClosed : P.rightIdentity

def FlexibleIdentityClosed (P : FlexibleIdentityPackage) : Prop :=
  P.leftIdentity ∧ P.rightIdentity

theorem flexible_identity_closed_from_evidence (P : FlexibleIdentityPackage)
    (E : FlexibleIdentityEvidence P) : FlexibleIdentityClosed P := by
  exact And.intro E.leftIdentityClosed E.rightIdentityClosed

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse