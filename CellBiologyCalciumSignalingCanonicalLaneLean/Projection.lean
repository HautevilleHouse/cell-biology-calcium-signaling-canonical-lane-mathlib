import CellBiologyCalciumSignalingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def calciumProjection : Projection CalciumEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem calcium_projection_idempotent (x : CalciumEndgameState) :
    calciumProjection.toFun (calciumProjection.toFun x) = calciumProjection.toFun x := by
  exact calciumProjection.idempotent x

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse
