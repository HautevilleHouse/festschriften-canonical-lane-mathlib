import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure FestschriftEssayPackage (A : AdmissibleClass) where
  author : String
  title : String
  year : Nat
  contribution : Prop

structure FestschriftEssayEvidence {A : AdmissibleClass} (E : FestschriftEssayPackage A) where
  contributionClosed : E.contribution

def FestschriftEssayClosed {A : AdmissibleClass} (E : FestschriftEssayPackage A) : Prop :=
  E.contribution

theorem festschrift_essay_closed_from_evidence
    {A : AdmissibleClass} (E : FestschriftEssayPackage A) (Ev : FestschriftEssayEvidence E) :
    FestschriftEssayClosed E := by
  exact Ev.contributionClosed

end FestschriftenCanonicalLaneLean
end HautevilleHouse