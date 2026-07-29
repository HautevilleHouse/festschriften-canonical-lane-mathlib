import canonicalLaneMathlib.AdmissibleClass
import FestschriftenCanonicalLaneLean.FestschriftStructure

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure ContributionClassificationPackage where
  invitedPapers : List FestschriftContribution
  contributedPapers : List FestschriftContribution
  memorialNotes : List FestschriftContribution
  editorialPreface : Prop

def InvitedClosed (C : ContributionClassificationPackage) : Prop :=
  C.invitedPapers ≠ []

def ContributionClassificationClosed (C : ContributionClassificationPackage) : Prop :=
  InvitedClosed C ∧ C.editorialPreface

theorem contribution_classification_closed_from_invited (C : ContributionClassificationPackage) (h : InvitedClosed C) (hpref : C.editorialPreface) : ContributionClassificationClosed C := by
  exact And.intro h hpref

end FestschriftenCanonicalLaneLean
end HautevilleHouse