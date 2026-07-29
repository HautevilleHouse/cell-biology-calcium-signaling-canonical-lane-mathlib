import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumWavePackage where
  reactionDiffusionModel : Prop
  waveSpeed : Prop
  intercellularCoupling : Prop
  bufferDynamics : Prop

structure CalciumWaveEvidence (P : CalciumWavePackage) where
  reactionDiffusionModelClosed : P.reactionDiffusionModel
  waveSpeedClosed : P.waveSpeed
  intercellularCouplingClosed : P.intercellularCoupling
  bufferDynamicsClosed : P.bufferDynamics

def CalciumWaveClosed (P : CalciumWavePackage) : Prop :=
  P.reactionDiffusionModel ∧ P.waveSpeed ∧ P.intercellularCoupling ∧ P.bufferDynamics

theorem calcium_wave_closed_from_evidence
    (P : CalciumWavePackage) (E : CalciumWaveEvidence P) :
    CalciumWaveClosed P := by
  exact And.intro E.reactionDiffusionModelClosed
    (And.intro E.waveSpeedClosed
      (And.intro E.intercellularCouplingClosed E.bufferDynamicsClosed))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse