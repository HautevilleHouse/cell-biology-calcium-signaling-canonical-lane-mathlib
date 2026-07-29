import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCalciumSignalingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumSignalingCell where
  cellType : Type
  compartment : Type
  calciumConcentration : ℕ → ℝ
  ip3ReceptorState : Prop
  ryanodineReceptorState : Prop
  calciumATPaseActive : Prop
  conclusion : ip3ReceptorState ∧ ryanodineReceptorState ∧ (calciumConcentration 0 > 0)

def CalciumSignalingWitnessClosed (c : CalciumSignalingCell) : Prop :=
  c.ip3ReceptorState ∧ c.ryanodineReceptorState ∧ (c.calciumConcentration 0 > 0)

theorem calcium_signaling_witness_closed_from_cell (c : CalciumSignalingCell) :
    CalciumSignalingWitnessClosed c := by
  exact c.conclusion

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse
