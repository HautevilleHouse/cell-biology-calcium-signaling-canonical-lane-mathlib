import HautevilleHouse.CellBiologyCalciumSignalingCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumSignalingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CalciumSignalingAdmittedObject where
  space : CalciumSignalingSpace
  calciumSignalingDynamics : Prop
  keySignalingPathways : Prop
  conclusion : calciumSignalingDynamics ∧ keySignalingPathways

def CalciumSignalingWitnessClosed (O : CalciumSignalingAdmittedObject) : Prop :=
  O.calciumSignalingDynamics ∧ O.keySignalingPathways

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse