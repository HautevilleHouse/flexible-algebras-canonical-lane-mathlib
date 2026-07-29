import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure PowerAssociativeStructure where
  signature : FlexibleAlgebraSignature
  powerAssociative : ∀ a : signature.carrier, signature.multiplication a (signature.multiplication a a) = signature.multiplication (signature.multiplication a a) a

def powerAssociativeClosed (P : PowerAssociativeStructure) : Prop :=
  P.powerAssociative

theorem power_associative_from_flexible (S : FlexibleAlgebraSignature) (flexId : ∀ a b : S.carrier, S.multiplication a (S.multiplication b a) = S.multiplication (S.multiplication a b) a) :
  ∀ a : S.carrier, S.multiplication a (S.multiplication a a) = S.multiplication (S.multiplication a a) a :=
  λ a => flexId a a

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse