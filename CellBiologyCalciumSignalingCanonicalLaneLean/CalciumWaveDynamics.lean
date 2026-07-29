import HautevilleHouse.CellBiologyCalciumSignalingCanonicalLaneLean.CalciumReleaseMechanism

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumWaveDynamicsPackage (R : CalciumReleaseMechanismPackage) where
  diffusionCoefficient : Prop
  waveEquation : Prop
  waveSpeed : Prop
  waveAmplitude : Prop

structure CalciumWaveDynamicsEvidence {R : CalciumReleaseMechanismPackage}
    (W : CalciumWaveDynamicsPackage R) where
  diffusionCoefficientClosed : W.diffusionCoefficient
  waveEquationClosed : W.waveEquation
  waveSpeedClosed : W.waveSpeed
  waveAmplitudeClosed : W.waveAmplitude

def CalciumWaveDynamicsClosed {R : CalciumReleaseMechanismPackage}
    (W : CalciumWaveDynamicsPackage R) : Prop :=
  W.diffusionCoefficient ∧ W.waveEquation ∧ W.waveSpeed ∧ W.waveAmplitude

theorem calcium_wave_dynamics_closed_from_evidence
    {R : CalciumReleaseMechanismPackage} (W : CalciumWaveDynamicsPackage R)
    (E : CalciumWaveDynamicsEvidence W) : CalciumWaveDynamicsClosed W := by
  exact And.intro E.diffusionCoefficientClosed
    (And.intro E.waveEquationClosed
      (And.intro E.waveSpeedClosed E.waveAmplitudeClosed))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse