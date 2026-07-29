import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

def ConstrainedFlexibleClosure (A : FlexibleAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_flexible_endgame (A : FlexibleAdmissibleClass) : ConstrainedFlexibleClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse