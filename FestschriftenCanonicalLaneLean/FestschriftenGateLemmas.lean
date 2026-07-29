import FestschriftenCanonicalLaneLean.FestschriftenBridgeLemmas

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

def gateClosed (A : FestschriftAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : FestschriftAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FestschriftenCanonicalLaneLean
end HautevilleHouse
