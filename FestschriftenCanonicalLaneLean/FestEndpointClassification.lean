import FestschriftenCanonicalLaneLean.FestFinalTheorem

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure EndpointClassificationPackage (A : AdmissibleClass) where
  endpointStatement : String
  scholarlyRelevance : Prop
  endpointClosed : Prop

structure EndpointClassificationEvidence {A : AdmissibleClass} (Epkg : EndpointClassificationPackage A) where
  endpointStatementClosed : Epkg.endpointStatement = "Fest contribution"
  scholarlyRelevanceClosed : Epkg.scholarlyRelevance

def EndpointClassificationClosed {A : AdmissibleClass} (Epkg : EndpointClassificationPackage A) : Prop :=
  Epkg.endpointStatement = "Fest contribution" ∧ Epkg.scholarlyRelevance

theorem endpoint_classification_closed_from_evidence
    {A : AdmissibleClass} (Epkg : EndpointClassificationPackage A)
    (E : EndpointClassificationEvidence Epkg) : EndpointClassificationClosed Epkg := by
  exact And.intro E.endpointStatementClosed E.scholarlyRelevanceClosed

end FestschriftenCanonicalLaneLean
end HautevilleHouse
