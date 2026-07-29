import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FlexibleAlgebrasCanonicalLaneLean.FlexibleAlgebraAdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure ClassificationEvidence (A : AdmissibleFlexibleAlgebraClass) where
  finiteDimensionalClassification : A.object.finiteDimensional → A.object.simple → A.object.admitsIdempotent
  classificationClosed : A.object.finiteDimensional ∧ A.object.simple ∧ A.object.admitsIdempotent

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse
