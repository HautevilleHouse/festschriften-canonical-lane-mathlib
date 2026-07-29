import FestschriftenCanonicalLaneLean.AdmissibleClass
import FestschriftenCanonicalLaneLean.BridgeLemmas

/-!
# Edited Collection Package
-/

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

structure EditedCollectionPackage where
  collectionTitle : String
  honoreeName : String
  papers : List String
  volumeEditors : List String
  publisher : String
  year : Nat

def EditedCollectionClosed (C : EditedCollectionPackage) : Prop :=
  (C.papers.length ≥ 3) ∧ (C.volumeEditors.length > 0)

end FestschriftenCanonicalLaneLean
end HautevilleHouse