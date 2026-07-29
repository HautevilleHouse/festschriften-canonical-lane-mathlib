import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure FestObject where
  carrier : Type
  description : String
  verified : Prop

structure FestAdmittedObject where
  object : FestObject
  honorandSignificance : Prop
  scholarlyContext : Prop
  conclusion : honorandSignificance ∧ scholarlyContext

end FestschriftenCanonicalLaneLean
end HautevilleHouse
