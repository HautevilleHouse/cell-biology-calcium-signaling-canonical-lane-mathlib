import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumWavePDEPackage where
  spatialDomain : Type u
  timeDomain : Type v
  calciumConcentration : spatialDomain -> timeDomain -> Type w
  diffusionCoefficient : Type
  bufferingDynamics : Prop
  releaseUptakeBalance : Prop
  initialBoundaryConditions : Prop
  reactionDiffusionEquation : Prop

structure CalciumWavePDEEvidence (P : CalciumWavePDEPackage) where
  diffusionCoefficientClosed : P.diffusionCoefficient
  bufferingDynamicsClosed : P.bufferingDynamics
  releaseUptakeBalanceClosed : P.releaseUptakeBalance
  initialBoundaryConditionsClosed : P.initialBoundaryConditions
  reactionDiffusionEquationClosed : P.reactionDiffusionEquation

def CalciumWavePDEClosed (P : CalciumWavePDEPackage) : Prop :=
  P.diffusionCoefficient ∧ P.bufferingDynamics ∧
  P.releaseUptakeBalance ∧ P.initialBoundaryConditions ∧
  P.reactionDiffusionEquation

theorem calcium_wave_pde_closed_from_evidence
    (P : CalciumWavePDEPackage) (E : CalciumWavePDEEvidence P) :
    CalciumWavePDEClosed P := by
  exact And.intro E.diffusionCoefficientClosed
    (And.intro E.bufferingDynamicsClosed
      (And.intro E.releaseUptakeBalanceClosed
        (And.intro E.initialBoundaryConditionsClosed
          E.reactionDiffusionEquationClosed)))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse