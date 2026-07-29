import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure JordanAlgebra (K : Type u) [Field K] (A : Type v) [AddCommGroup A] [Module K A] [CommRing A] where
  commutative : ∀ (x y : A), x * y = y * x
  jordan_identity : ∀ (x y : A), (x * y) * (x * x) = x * (y * (x * x))

def JordanAdmissibleClass (K : Type u) [Field K] (A : Type v) [AddCommGroup A] [Module K A] [CommRing A] : Prop :=
  ∀ (x y z : A), (x * y) * z + (z * y) * x = x * (y * z) + z * (y * x)

theorem jordan_is_flexible (J : JordanAlgebra ℚ A) : JordanAdmissibleClass ℚ A := by
  intro x y z
  calc
    (x * y) * z + (z * y) * x = (x * y) * z + (x * (y * z) - (x * y) * z + (z * y) * x) := by ring
    _ = x * (y * z) + z * (y * x) := by ring

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse
