import FestschriftenCanonicalLaneLean.FestschriftenAdmissible

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

def bridgeClosed (A : FestschriftAdmissibleClass) : Prop :=
  A.object.bridgeValid

theorem bridge_from_admissible_class (A : FestschriftAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FestschriftenCanonicalLaneLean
end HautevilleHouse
