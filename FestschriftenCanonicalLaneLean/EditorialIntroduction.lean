import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure EditorialIntroductionPackage (A : AdmissibleClass) where
  editor : String
  summary : Prop

structure EditorialIntroductionEvidence {A : AdmissibleClass} (E : EditorialIntroductionPackage A) where
  summaryClosed : E.summary

def EditorialIntroductionClosed {A : AdmissibleClass} (E : EditorialIntroductionPackage A) : Prop :=
  E.summary

theorem editorial_introduction_closed_from_evidence
    {A : AdmissibleClass} (E : EditorialIntroductionPackage A) (Ev : EditorialIntroductionEvidence E) :
    EditorialIntroductionClosed E := by
  exact Ev.summaryClosed

end FestschriftenCanonicalLaneLean
end HautevilleHouse