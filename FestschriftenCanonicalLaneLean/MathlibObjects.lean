import FestschriftenCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FestschriftenCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FestschriftSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FestschriftAdmittedObject where
  space : FestschriftSpace
  featureComplete : Prop
  peerReviewed : Prop
  collectedVolume : Type
  volumeTopology : TopologicalSpace collectedVolume
  includesPaper : Prop
  conclusion : includesPaper

structure FestschriftEndgameState where
  object : FestschriftAdmittedObject

def FestschriftWitnessClosed (O : FestschriftAdmittedObject) : Prop :=
  O.includesPaper

end FestschriftenCanonicalLaneLean
end HautevilleHouse