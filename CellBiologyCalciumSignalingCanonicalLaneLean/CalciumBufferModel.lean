import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCalciumSignalingCanonicalLaneLean.CalciumSignalingAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumBufferPackage {A : AdmissibleClass} where
  bufferConcentration : ℝ
  bindingRate : ℝ
  unbindingRate : ℝ
  calciumAffinity : ℝ
  mobileFraction : ℝ

structure CalciumBufferEvidence {A : AdmissibleClass} (B : CalciumBufferPackage A) where
  bufferConcentrationPositive : B.bufferConcentration > 0
  bindingRatePositive : B.bindingRate > 0
  unbindingRatePositive : B.unbindingRate > 0
  calciumAffinityPositive : B.calciumAffinity > 0
  mobileFractionInUnitInterval : B.mobileFraction ≥ 0 ∧ B.mobileFraction ≤ 1

def CalciumBufferModelClosed {A : AdmissibleClass} (B : CalciumBufferPackage A) : Prop :=
  B.bufferConcentration > 0 ∧ B.bindingRate > 0 ∧ B.unbindingRate > 0 ∧ B.calciumAffinity > 0 ∧ B.mobileFraction ≥ 0 ∧ B.mobileFraction ≤ 1

theorem calcium_buffer_model_closed_from_evidence
    {A : AdmissibleClass} (B : CalciumBufferPackage A) (E : CalciumBufferEvidence B) :
    CalciumBufferModelClosed B := by
  have h1 : B.bufferConcentration > 0 := E.bufferConcentrationPositive
  have h2 : B.bindingRate > 0 := E.bindingRatePositive
  have h3 : B.unbindingRate > 0 := E.unbindingRatePositive
  have h4 : B.calciumAffinity > 0 := E.calciumAffinityPositive
  have h5 : B.mobileFraction ≥ 0 ∧ B.mobileFraction ≤ 1 := E.mobileFractionInUnitInterval
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse