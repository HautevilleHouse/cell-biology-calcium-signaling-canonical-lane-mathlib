import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumBufferingDiffusionPackage where
  bufferProteins : Type u
  diffusionCoefficient : Prop
  bufferingKinetics : Prop
  spatialGradients : Prop
  microdomainFormation : Prop
  transportMechanisms : Prop

structure CalciumBufferingDiffusionEvidence (B : CalciumBufferingDiffusionPackage) where
  diffusionCoefficientClosed : B.diffusionCoefficient
  bufferingKineticsClosed : B.bufferingKinetics
  spatialGradientsClosed : B.spatialGradients
  microdomainFormationClosed : B.microdomainFormation
  transportMechanismsClosed : B.transportMechanisms

def CalciumBufferingDiffusionClosed (B : CalciumBufferingDiffusionPackage) : Prop :=
  B.diffusionCoefficient ∧ B.bufferingKinetics ∧ B.spatialGradients ∧
  B.microdomainFormation ∧ B.transportMechanisms

theorem calcium_buffering_diffusion_closed_from_evidence
    (B : CalciumBufferingDiffusionPackage)
    (E : CalciumBufferingDiffusionEvidence B) : CalciumBufferingDiffusionClosed B := by
  exact And.intro E.diffusionCoefficientClosed
    (And.intro E.bufferingKineticsClosed
      (And.intro E.spatialGradientsClosed
        (And.intro E.microdomainFormationClosed
          E.transportMechanismsClosed)))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse