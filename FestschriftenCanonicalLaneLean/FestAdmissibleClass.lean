import FestschriftenCanonicalLaneLean.FestAdmittedObject

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure AdmissibleClass where
  object : FestAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FestschriftenCanonicalLaneLean
end HautevilleHouse
