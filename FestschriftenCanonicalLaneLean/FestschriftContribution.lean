import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FestschriftenCanonicalLaneLean.Preliminary

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure ContributionPackage where
  author : String
  title : String
  abstract : String
  pages : Nat
  references : List String

structure ContributionEvidence (C : ContributionPackage) where
  authorClosed : C.author ≠ ""
  titleClosed : C.title ≠ ""
  abstractClosed : C.abstract ≠ ""

def ContributionClosed (C : ContributionPackage) : Prop :=
  C.author ≠ "" ∧ C.title ≠ "" ∧ C.abstract ≠ ""

theorem contribution_closed_from_evidence (C : ContributionPackage) (E : ContributionEvidence C) :
    ContributionClosed C := by
  exact And.intro E.authorClosed (And.intro E.titleClosed E.abstractClosed)

end FestschriftenCanonicalLaneLean
end HautevilleHouse