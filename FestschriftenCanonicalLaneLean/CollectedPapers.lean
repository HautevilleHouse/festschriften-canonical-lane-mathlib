import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure CollectedPapersPackage (A : AdmissibleClass) where
  volumes : Nat
  paperCount : Nat
  completeness : Prop

structure CollectedPapersEvidence {A : AdmissibleClass} (C : CollectedPapersPackage A) where
  completenessClosed : C.completeness

def CollectedPapersClosed {A : AdmissibleClass} (C : CollectedPapersPackage A) : Prop :=
  C.completeness

theorem collected_papers_closed_from_evidence
    {A : AdmissibleClass} (C : CollectedPapersPackage A) (Ev : CollectedPapersEvidence C) :
    CollectedPapersClosed C := by
  exact Ev.completenessClosed

end FestschriftenCanonicalLaneLean
end HautevilleHouse