import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure FlexibleLawPackage where
  algebra : Type u
  mul : algebra → algebra → algebra
  flexibleLaw : ∀ x y, mul (mul x y) x = mul x (mul y x)

structure FlexibleLawEvidence (P : FlexibleLawPackage) where
  flexibleLawClosed : P.flexibleLaw

def FlexibleLawClosed (P : FlexibleLawPackage) : Prop :=
  P.flexibleLaw

theorem flexible_law_closed_from_evidence (P : FlexibleLawPackage)
    (E : FlexibleLawEvidence P) : FlexibleLawClosed P := by
  exact E.flexibleLawClosed

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse