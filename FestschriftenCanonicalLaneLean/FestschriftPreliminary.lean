import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure FestschriftObject where
  title : String
  publicationYear : Nat
  tributeTo : String
  contributionsCount : Nat

def FestschriftAdmittedObject (F : FestschriftObject) : Prop :=
  F.title ≠ "" ∧ F.publicationYear > 0

end FestschriftenCanonicalLaneLean
end HautevilleHouse