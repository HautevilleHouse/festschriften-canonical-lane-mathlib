import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure DedicationBridgePackage (A : AdmissibleClass) where
  honoree : String
  dedicationClosed : Prop

structure DedicationBridgeEvidence {A : AdmissibleClass} (D : DedicationBridgePackage A) where
  dedicationClosedTerm : D.dedicationClosed

def DedicationBridgeClosed {A : AdmissibleClass} (D : DedicationBridgePackage A) : Prop :=
  D.dedicationClosed

theorem dedication_bridge_closed_from_evidence
    {A : AdmissibleClass} (D : DedicationBridgePackage A) (Ev : DedicationBridgeEvidence D) :
    DedicationBridgeClosed D := by
  exact Ev.dedicationClosedTerm

end FestschriftenCanonicalLaneLean
end HautevilleHouse