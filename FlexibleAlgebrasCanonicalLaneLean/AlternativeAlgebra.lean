import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure AlternativeAlgebra (K : Type u) [Field K] (A : Type v) [AddCommGroup A] [Module K A] [Ring A] where
  left_alternative : ∀ (x y : A), (x * x) * y = x * (x * y)
  right_alternative : ∀ (x y : A), (y * x) * x = y * (x * x)
  flexible : ∀ (x y z : A), (x * y) * z + (z * y) * x = x * (y * z) + z * (y * x)

theorem alternative_implies_flexible (A : AlternativeAlgebra ℚ A) :
  ∀ (x y z : A), (x * y) * z + (z * y) * x = x * (y * z) + z * (y * x) :=
  A.flexible

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse
