import FestschriftenCanonicalLaneLean.FestschriftenGateLemmas

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

def ConstrainedFestschriftenClosure (A : FestschriftAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_festschriften_endgame (A : FestschriftAdmissibleClass) :
    ConstrainedFestschriftenClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FestschriftenCanonicalLaneLean
end HautevilleHouse
