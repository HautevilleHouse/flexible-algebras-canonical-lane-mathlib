import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure CompositionAlgebra (K : Type u) [Field K] (A : Type v) [AddCommGroup A] [Module K A] [Ring A] [HasInv A] where
  norm : A → K
  quadratic_form : ∀ (a : A), norm a = a * a⁻¹
  composition_law : ∀ (a b : A), norm (a * b) = norm a * norm b

theorem composition_algebra_is_flexible (C : CompositionAlgebra ℚ A) :
  ∀ (x y z : A), (x * y) * z + (z * y) * x = x * (y * z) + z * (y * x) := by
  intro x y z
  have h : ∀ (a : A), a⁻¹ * a = 1 := by
    intro a; exact mul_inv_cancel (by
      intro h; have : norm a = 0 := by simpa [h] using C.quadratic_form a
      sorry)
  sorry

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse
