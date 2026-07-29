import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure FestschriftManifest where
  honorandName : String
  publicationYear : Nat
  volumeEditors : List String
  contributions : List String
  openingDate : String
  closingDate : String

structure FestschriftContribution where
  title : String
  author : String
  section : String
  pageRange : String
  theoremProved : Prop
  peerReviewed : Prop

def FestschriftClosed (F : FestschriftManifest) : Prop :=
  F.openingDate ≠ F.closingDate

end FestschriftenCanonicalLaneLean
end HautevilleHouse