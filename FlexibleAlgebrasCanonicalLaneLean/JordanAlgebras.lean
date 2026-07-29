import FlexibleAlgebrasCanonicalLaneLean.PowerAssociative

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

structure JordanAlgebrasPackage where
  algebraType : Type
  multiplication : algebraType → algebraType → algebraType
  commutative : Prop
  flexible : Prop
  jordanIdentity : Prop
  flexibleCommutativeImpliesJordan : Prop

structure JordanAlgebrasEvidence (J : JordanAlgebrasPackage) where
  commutativeClosed : J.commutative
  flexibleClosed : J.flexible
  jordanIdentityClosed : J.jordanIdentity
  flexibleCommutativeImpliesJordanClosed : J.flexibleCommutativeImpliesJordan

def JordanAlgebrasClosed (J : JordanAlgebrasPackage) : Prop :=
  J.commutative ∧ J.flexible ∧ J.jordanIdentity ∧
  J.flexibleCommutativeImpliesJordan

theorem jordan_algebras_closed_from_evidence
    (J : JordanAlgebrasPackage)
    (E : JordanAlgebrasEvidence J) :
    JordanAlgebrasClosed J := by
  exact And.intro E.commutativeClosed
    (And.intro E.flexibleClosed
      (And.intro E.jordanIdentityClosed
        E.flexibleCommutativeImpliesJordanClosed))

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse
