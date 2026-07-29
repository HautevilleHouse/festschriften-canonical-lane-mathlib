import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure BibliographicClosurePackage (A : AdmissibleClass) where
  entries : List String
  referencesComplete : Prop

structure BibliographicClosureEvidence {A : AdmissibleClass} (B : BibliographicClosurePackage A) where
  referencesCompleteClosed : B.referencesComplete

def BibliographicClosureClosed {A : AdmissibleClass} (B : BibliographicClosurePackage A) : Prop :=
  B.referencesComplete

theorem bibliographic_closure_closed_from_evidence
    {A : AdmissibleClass} (B : BibliographicClosurePackage A) (Ev : BibliographicClosureEvidence B) :
    BibliographicClosureClosed B := by
  exact Ev.referencesCompleteClosed

end FestschriftenCanonicalLaneLean
end HautevilleHouse