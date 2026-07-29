import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure FlexibleAlgebraObject where
  algebra : FlexibleAlgebra ℤ
  admissible : FlexibleAlgebraAdmissible ℤ algebra

def FlexibleAlgebraWitnessClosed (O : FlexibleAlgebraObject) : Prop :=
  O.admissible

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse
