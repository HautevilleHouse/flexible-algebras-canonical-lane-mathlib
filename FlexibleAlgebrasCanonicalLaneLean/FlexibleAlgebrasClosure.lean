import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

def FlexibleAlgebraAdmissibleClass (A : FlexibleAlgebra ℚ A) : AdmissibleClass where
  object := A
  endpointSatisfied := FlexibleAlgebraClosed A
  remainderRecorded := True
  gateWitness := Or.inl A.flexible_identity

def ConstrainedFlexibleAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_flexible_algebra_endgame (A : AdmissibleClass) :
    ConstrainedFlexibleAlgebraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse
