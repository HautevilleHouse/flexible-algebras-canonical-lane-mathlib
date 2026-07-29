import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FlexibleAlgebrasCanonicalLaneLean.FlexibleAlgebraDefinition

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure Centralizer (A : FlexibleAlgebra ℚ) where
  subset : Set A.carrier
  centralizing : ∀ x ∈ subset, ∀ y : A.carrier, A.mul x y = A.mul y x

structure CentralizerEvidence (A : FlexibleAlgebra ℚ) (C : Centralizer A) where
  subalgebra : Subalgebra ℚ A.carrier
  isSubalgebra : subalgebra.carrier = C.subset

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse
