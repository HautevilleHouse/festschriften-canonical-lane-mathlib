import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure BibliographyEntry where
  author : String
  title : String
  journal : String
  year : Nat
  doi : Option String

structure BibliographyPackage where
  entries : List BibliographyEntry
  formatConsistent : Prop

structure BibliographyEvidence (B : BibliographyPackage) where
  entriesNonempty : B.entries ≠ []
  formatConsistentClosed : B.formatConsistent

def BibliographyClosed (B : BibliographyPackage) : Prop :=
  B.entries ≠ [] ∧ B.formatConsistent

theorem bibliography_closed_from_evidence (B : BibliographyPackage) (E : BibliographyEvidence B) :
    BibliographyClosed B := by
  exact And.intro E.entriesNonempty E.formatConsistentClosed

end FestschriftenCanonicalLaneLean
end HautevilleHouse