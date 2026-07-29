import FestschriftenCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

def ConstrainedFestClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fest_endgame (A : AdmissibleClass) :
    ConstrainedFestClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FestschriftenCanonicalLaneLean
end HautevilleHouse
