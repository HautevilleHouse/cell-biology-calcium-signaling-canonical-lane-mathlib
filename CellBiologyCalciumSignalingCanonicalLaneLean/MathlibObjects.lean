import CellBiologyCalciumSignalingCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CalciumCell where
  carrier : Type
  topology : TopologicalSpace carrier

structure CalciumAdmittedObject where
  cell : CalciumCell
  signalingMolecules : Prop
  calciumFlux : Prop
  receptorBinding : Prop
  conclusion : signalingMolecules ∧ calciumFlux ∧ receptorBinding

structure CalciumEndgameState where
  object : CalciumAdmittedObject

def CalciumWitnessClosed (O : CalciumAdmittedObject) : Prop :=
  O.signalingMolecules ∧ O.calciumFlux ∧ O.receptorBinding

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse
