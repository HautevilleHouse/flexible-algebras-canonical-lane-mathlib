import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure MutationClassificationPackage where
  sourceAlgebra : Type u
  targetAlgebra : Type v
  mutationMap : sourceAlgebra → targetAlgebra
  mutationRespectsMultiplication : Prop
  imageIsFlexible : Prop
  kernelIsIdeal : Prop

structure MutationClassificationEvidence (P : MutationClassificationPackage) where
  mutationRespectsMultiplicationClosed : P.mutationRespectsMultiplication
  imageIsFlexibleClosed : P.imageIsFlexible
  kernelIsIdealClosed : P.kernelIsIdeal

def MutationClassificationClosed (P : MutationClassificationPackage) : Prop :=
  P.mutationRespectsMultiplication ∧ P.imageIsFlexible ∧ P.kernelIsIdeal

theorem mutation_classification_closed_from_evidence (P : MutationClassificationPackage)
    (E : MutationClassificationEvidence P) : MutationClassificationClosed P := by
  exact And.intro E.mutationRespectsMultiplicationClosed
    (And.intro E.imageIsFlexibleClosed E.kernelIsIdealClosed)

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse