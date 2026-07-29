import FestschriftenCanonicalLaneLean.FestAdmittedObject

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure ScholarlyContext where
  discipline : String
  historicalPeriod : String
  keyContributions : List String
  festschriftTradition : Prop

defaultScholarlyContext : ScholarlyContext := {
  discipline := "Mathematics"
  historicalPeriod := "20th Century"
  keyContributions := []
  festschriftTradition := True
}

end FestschriftenCanonicalLaneLean
end HautevilleHouse
