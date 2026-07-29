import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FestschriftenCanonicalLaneLean.Preliminary
import HautevilleHouse.FestschriftenCanonicalLaneLean.FestschriftCompilation
import HautevilleHouse.FestschriftenCanonicalLaneLean.FestschriftContribution
import HautevilleHouse.FestschriftenCanonicalLaneLean.FestschriftBibliography
import HautevilleHouse.FestschriftenCanonicalLaneLean.FestschriftDedication

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

def FestschriftAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem festschrift_admissible_endgame (A : AdmissibleClass) :
    FestschriftAdmissibleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FestschriftenCanonicalLaneLean
end HautevilleHouse