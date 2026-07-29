import FlexibleAlgebrasCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure PowerAssociativeAlgebrasPackage where
  algebraType : Type
  multiplication : algebraType → algebraType → algebraType
  powerAssociative : Prop
  flexibleImpliesPowerAssociative : Prop

structure PowerAssociativeAlgebrasEvidence
    (P : PowerAssociativeAlgebrasPackage) where
  powerAssociativeClosed : P.powerAssociative
  flexibleImpliesPowerAssociativeClosed : P.flexibleImpliesPowerAssociative

def PowerAssociativeAlgebrasClosed (P : PowerAssociativeAlgebrasPackage) : Prop :=
  P.powerAssociative ∧ P.flexibleImpliesPowerAssociative

theorem power_associative_algebras_closed_from_evidence
    (P : PowerAssociativeAlgebrasPackage)
    (E : PowerAssociativeAlgebrasEvidence P) :
    PowerAssociativeAlgebrasClosed P := by
  exact And.intro E.powerAssociativeClosed
    E.flexibleImpliesPowerAssociativeClosed

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse
