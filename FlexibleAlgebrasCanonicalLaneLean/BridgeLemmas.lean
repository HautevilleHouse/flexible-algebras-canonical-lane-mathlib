import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FlexibleAlgebrasCanonicalLaneLean

def bridgeClosed (A : FlexibleAdmissibleClass) : Prop :=
  A.object.flexIdentityClosed

theorem bridge_from_admissible_class (A : FlexibleAdmissibleClass) : bridgeClosed A :=
  A.object.flexIdentityClosed

end FlexibleAlgebrasCanonicalLaneLean
end HautevilleHouse