import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

def gateClosed (A : FlexibleAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : FlexibleAdmissibleClass) : gateClosed A :=
  A.gateWitness

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse