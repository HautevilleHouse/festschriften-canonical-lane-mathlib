import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FestschriftenCanonicalLaneLean.Preliminary

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure ReviewPackage where
  reviewer : String
  rating : Nat
  comments : String

structure ReviewEvidence (R : ReviewPackage) where
  reviewerNonempty : R.reviewer ≠ ""
  ratingNonzero : R.rating > 0
  commentsNonempty : R.comments ≠ ""

def ReviewClosed (R : ReviewPackage) : Prop :=
  R.reviewer ≠ "" ∧ R.rating > 0 ∧ R.comments ≠ ""

theorem review_closed_from_evidence (R : ReviewPackage) (E : ReviewEvidence R) :
    ReviewClosed R := by
  exact And.intro E.reviewerNonempty (And.intro E.ratingNonzero E.commentsNonempty)

end FestschriftenCanonicalLaneLean
end HautevilleHouse