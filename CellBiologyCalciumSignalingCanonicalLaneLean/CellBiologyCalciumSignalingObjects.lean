import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumSignalingCell where
  cellType : Type
  membranePotential : Type
  caConcentration : Type
  ip3Concentration : Type
  receptorType : Type

default instance : Inhabited CalciumSignalingCell := ⟨{
  cellType := Unit
  membranePotential := Unit
  caConcentration := Unit
  ip3Concentration := Unit
  receptorType := Unit
}⟩

structure CalciumSignalingAdmittedObject where
  cell : CalciumSignalingCell
  hasIP3Receptor : Prop
  calciumSignalsObserved : Prop
  hasCalciumWave : Prop
  conclusion : hasCalciumWave ∧ hasIP3Receptor

structure CalciumSignalingEndgameState where
  object : CalciumSignalingAdmittedObject

def CalciumWitnessClosed (O : CalciumSignalingAdmittedObject) : Prop :=
  O.hasCalciumWave ∧ O.hasIP3Receptor

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse