import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure SimpleFlexibleClassificationPackage where
  algebra : Type u
  multiplication : algebra → algebra → algebra
  flexibleLaw : ∀ x y, multiplication (multiplication x y) x = multiplication x (multiplication y x)
  simpleDef : Prop
  classificationComplete : Prop

structure SimpleFlexibleClassificationEvidence (P : SimpleFlexibleClassificationPackage) where
  flexibleLawClosed : P.flexibleLaw
  simpleDefClosed : P.simpleDef
  classificationCompleteClosed : P.classificationComplete

def SimpleFlexibleClassificationClosed (P : SimpleFlexibleClassificationPackage) : Prop :=
  P.flexibleLaw ∧ P.simpleDef ∧ P.classificationComplete

theorem simple_flexible_classification_closed_from_evidence
    (P : SimpleFlexibleClassificationPackage)
    (E : SimpleFlexibleClassificationEvidence P) : SimpleFlexibleClassificationClosed P := by
  exact And.intro E.flexibleLawClosed (And.intro E.simpleDefClosed E.classificationCompleteClosed)

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse