import FestschriftenCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def festschriftProjection : Projection FestschriftEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem festschrift_projection_idempotent (x : FestschriftEndgameState) :
    festschriftProjection.toFun (festschriftProjection.toFun x) = festschriftProjection.toFun x := by
  exact festschriftProjection.idempotent x

end FestschriftenCanonicalLaneLean
end HautevilleHouse