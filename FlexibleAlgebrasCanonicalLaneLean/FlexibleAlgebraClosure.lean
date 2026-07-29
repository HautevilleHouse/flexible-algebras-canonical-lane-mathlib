import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FlexibleAlgebraAdmissibleClass where
  object : FlexibleAlgebraObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : FlexibleAlgebraAdmissibleClass) : Prop :=
  FlexibleAlgebraWitnessClosed A.object

def gateClosed (A : FlexibleAlgebraAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : FlexibleAlgebraAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.admissible

theorem gate_from_admissible_class (A : FlexibleAlgebraAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedFlexibleAlgebraClosure (A : FlexibleAlgebraAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_flexible_algebra_endgame (A : FlexibleAlgebraAdmissibleClass) :
    ConstrainedFlexibleAlgebraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse
