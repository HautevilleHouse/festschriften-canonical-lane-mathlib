import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure FestschriftVolume where
  title : String
  honoree : String
  editors : List String
  year : Nat
  publisher : String
  isbn : String
  pageCount : Nat
  contributions : List String
  topics : List String

structure FestschriftAdmittedObject where
  volume : FestschriftVolume
  peerReviewed : Prop
  indexed : Prop
  bridgeValid : Prop
  conclusion : bridgeValid

structure FestschriftAdmissibleClass where
  object : FestschriftAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : FestschriftAdmissibleClass) : Prop :=
  A.object.bridgeValid ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FestschriftenCanonicalLaneLean
end HautevilleHouse
