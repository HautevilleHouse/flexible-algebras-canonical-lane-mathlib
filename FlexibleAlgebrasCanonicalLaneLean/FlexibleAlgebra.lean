import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure FlexibleAlgebra (K : Type u) [Field K] (A : Type v) [AddCommGroup A] [Module K A] [Ring A] where
  flexible_identity : ∀ (x y z : A), (x * y) * z + (z * y) * x = x * (y * z) + z * (y * x)

def FlexibleAlgebraClosed (A : FlexibleAlgebra ℚ A) : Prop := A.flexible_identity

theorem flexible_algebra_closed (A : FlexibleAlgebra ℚ A) : FlexibleAlgebraClosed A := by
  exact A.flexible_identity

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse
