import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure DedicationPackage where
  dedicatee : String
  inscription : String

structure DedicationEvidence (D : DedicationPackage) where
  dedicateeClosed : D.dedicatee ≠ ""

def DedicationClosed (D : DedicationPackage) : Prop :=
  D.dedicatee ≠ ""

theorem dedication_closed_from_evidence (D : DedicationPackage) (E : DedicationEvidence D) :
    DedicationClosed D := by
  exact E.dedicateeClosed

end FestschriftenCanonicalLaneLean
end HautevilleHouse