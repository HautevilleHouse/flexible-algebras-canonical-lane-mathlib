import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure JordanIdentityStructure where
  signature : FlexibleAlgebraSignature
  jordanIdentity : ∀ a b : signature.carrier, signature.multiplication (signature.multiplication a b) (signature.multiplication a a) = signature.multiplication a (signature.multiplication b (signature.multiplication a a))

def jordanIdentityClosed (J : JordanIdentityStructure) : Prop :=
  J.jordanIdentity

theorem jordan_identity_via_flexible (S : FlexibleAlgebraSignature) (flexId : ∀ a b : S.carrier, S.multiplication a (S.multiplication b a) = S.multiplication (S.multiplication a b) a) :
  ∀ a b : S.carrier, S.multiplication (S.multiplication a b) (S.multiplication a a) = S.multiplication a (S.multiplication b (S.multiplication a a)) :=
by
  intro a b
  calc
    S.multiplication (S.multiplication a b) (S.multiplication a a) = S.multiplication (S.multiplication (S.multiplication a b) a) a := by
      rw [flexId (S.multiplication a b) a]
    _ = S.multiplication (S.multiplication a (S.multiplication b a)) a := by
      rw [flexId a b]
    _ = S.multiplication a (S.multiplication (S.multiplication b a) a) := by
      rw [flexId a (S.multiplication b a)]
    _ = S.multiplication a (S.multiplication b (S.multiplication a a)) := by
      rw [flexId b a]

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse