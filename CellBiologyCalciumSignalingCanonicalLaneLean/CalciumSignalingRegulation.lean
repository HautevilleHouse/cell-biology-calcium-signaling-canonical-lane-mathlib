import HautevilleHouse.CellBiologyCalciumSignalingCanonicalLaneLean.CalciumWaveDynamics

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumSignalingRegulationPackage {R : CalciumReleaseMechanismPackage}
    (W : CalciumWaveDynamicsPackage R) where
  calciumBufferPresent : Prop
  calmodulinActivation : Prop
  feedbackInhibition : Prop
  pumpActivity : Prop

structure CalciumSignalingRegulationEvidence {R : CalciumReleaseMechanismPackage}
    {W : CalciumWaveDynamicsPackage R} (U : CalciumSignalingRegulationPackage W) where
  calciumBufferPresentClosed : U.calciumBufferPresent
  calmodulinActivationClosed : U.calmodulinActivation
  feedbackInhibitionClosed : U.feedbackInhibition
  pumpActivityClosed : U.pumpActivity

def CalciumSignalingRegulationClosed {R : CalciumReleaseMechanismPackage}
    {W : CalciumWaveDynamicsPackage R} (U : CalciumSignalingRegulationPackage W) : Prop :=
  U.calciumBufferPresent ∧ U.calmodulinActivation ∧ U.feedbackInhibition ∧ U.pumpActivity

theorem calcium_signaling_regulation_closed_from_evidence
    {R : CalciumReleaseMechanismPackage} {W : CalciumWaveDynamicsPackage R}
    (U : CalciumSignalingRegulationPackage W) (E : CalciumSignalingRegulationEvidence U) :
    CalciumSignalingRegulationClosed U := by
  exact And.intro E.calciumBufferPresentClosed
    (And.intro E.calmodulinActivationClosed
      (And.intro E.feedbackInhibitionClosed E.pumpActivityClosed))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse