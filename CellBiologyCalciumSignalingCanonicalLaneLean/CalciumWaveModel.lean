import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCalciumSignalingCanonicalLaneLean.CalciumSignalingAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumWavePackage {A : AdmissibleClass} where
  waveSpeed : ℝ
  waveAmplitude : ℝ
  diffusionCoefficient : ℝ
  sourceTerm : Prop
  bufferEffect : Prop

structure CalciumWaveEvidence {A : AdmissibleClass} (W : CalciumWavePackage A) where
  waveSpeedPositive : W.waveSpeed > 0
  waveAmplitudePositive : W.waveAmplitude > 0
  diffusionCoefficientPositive : W.diffusionCoefficient > 0
  sourceTermClosed : W.sourceTerm
  bufferEffectClosed : W.bufferEffect

def CalciumWaveModelClosed {A : AdmissibleClass} (W : CalciumWavePackage A) : Prop :=
  W.waveSpeed > 0 ∧ W.waveAmplitude > 0 ∧ W.diffusionCoefficient > 0 ∧ W.sourceTerm ∧ W.bufferEffect

theorem calcium_wave_model_closed_from_evidence
    {A : AdmissibleClass} (W : CalciumWavePackage A) (E : CalciumWaveEvidence W) :
    CalciumWaveModelClosed W := by
  exact And.intro E.waveSpeedPositive
    (And.intro E.waveAmplitudePositive
      (And.intro E.diffusionCoefficientPositive
        (And.intro E.sourceTermClosed E.bufferEffectClosed)))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse