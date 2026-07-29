import FestschriftenCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure AdmissibleClass where
  object : FestschriftAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FestschriftWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FestschriftenCanonicalLaneLean
end HautevilleHouse