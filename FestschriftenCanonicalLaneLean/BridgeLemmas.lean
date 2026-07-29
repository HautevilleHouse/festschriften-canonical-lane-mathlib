import FestschriftenCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FestschriftWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FestschriftenCanonicalLaneLean
end HautevilleHouse