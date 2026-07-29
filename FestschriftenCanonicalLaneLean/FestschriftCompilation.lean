import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FestschriftenCanonicalLaneLean.Preliminary

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure FestschriftCompilationPackage where
  editorName : String
  publisher : String
  publicationDate : String
  volumeEditors : List String
  peerReview : Prop

structure FestschriftCompilationEvidence (C : FestschriftCompilationPackage) where
  editorNameClosed : C.editorName ≠ ""
  publisherClosed : C.publisher ≠ ""
  peerReviewClosed : C.peerReview

def FestschriftCompilationClosed (C : FestschriftCompilationPackage) : Prop :=
  C.editorName ≠ "" ∧ C.publisher ≠ "" ∧ C.peerReview

theorem festschrift_compilation_closed_from_evidence
    (C : FestschriftCompilationPackage) (E : FestschriftCompilationEvidence C) :
    FestschriftCompilationClosed C := by
  exact And.intro E.editorNameClosed (And.intro E.publisherClosed E.peerReviewClosed)

end FestschriftenCanonicalLaneLean
end HautevilleHouse