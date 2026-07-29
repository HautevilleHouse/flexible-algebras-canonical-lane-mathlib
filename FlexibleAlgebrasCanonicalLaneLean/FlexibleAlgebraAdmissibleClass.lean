import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure FlexibleAdmittedObject where
  signature : FlexibleAlgebraSignature
  flexIdentity : ∀ a b : signature.carrier, signature.multiplication a (signature.multiplication b a) = signature.multiplication (signature.multiplication a b) a
  flexIdentityClosed : flexIdentity

structure FlexibleAdmissibleClass where
  object : FlexibleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def flexibleAdmittedClosure (A : FlexibleAdmissibleClass) : Prop :=
  A.object.flexIdentityClosed ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse