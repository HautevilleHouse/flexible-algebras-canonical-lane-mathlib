import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure FlexibleAlgebraObject where
  algebraType : Type
  multiplication : algebraType → algebraType → algebraType
  flexibleIdentity : ∀ x y : algebraType,
    multiplication (multiplication x y) x = multiplication x (multiplication y x)
  conclusion : flexibleIdentity

structure AdmissibleClass where
  object : FlexibleAlgebraObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FlexibleAlgebraWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse
