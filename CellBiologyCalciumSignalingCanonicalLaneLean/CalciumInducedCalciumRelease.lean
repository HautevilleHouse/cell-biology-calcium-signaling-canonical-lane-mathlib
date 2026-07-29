import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCalciumSignalingCanonicalLaneLean.IP3ReceptorDynamics

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumInducedCalciumReleasePackage {P : CalciumWavePDEPackage}
    {I : IP3ReceptorDynamicsPackage P} where
  thresholdConcentration : Prop
  autocatalyticRelease : Prop
  feedbackAmplification : Prop
  wavePropagationVelocity : Prop
  refractoriness : Prop

structure CalciumInducedCalciumReleaseEvidence {P : CalciumWavePDEPackage}
    {I : IP3ReceptorDynamicsPackage P}
    (C : CalciumInducedCalciumReleasePackage P I) where
  thresholdConcentrationClosed : C.thresholdConcentration
  autocatalyticReleaseClosed : C.autocatalyticRelease
  feedbackAmplificationClosed : C.feedbackAmplification
  wavePropagationVelocityClosed : C.wavePropagationVelocity
  refractorinessClosed : C.refractoriness

def CalciumInducedCalciumReleaseClosed {P : CalciumWavePDEPackage}
    {I : IP3ReceptorDynamicsPackage P}
    (C : CalciumInducedCalciumReleasePackage P I) : Prop :=
  C.thresholdConcentration ∧ C.autocatalyticRelease ∧
  C.feedbackAmplification ∧ C.wavePropagationVelocity ∧
  C.refractoriness

theorem calcium_induced_calcium_release_closed_from_evidence
    {P : CalciumWavePDEPackage} {I : IP3ReceptorDynamicsPackage P}
    (C : CalciumInducedCalciumReleasePackage P I)
    (E : CalciumInducedCalciumReleaseEvidence C) :
    CalciumInducedCalciumReleaseClosed C := by
  exact And.intro E.thresholdConcentrationClosed
    (And.intro E.autocatalyticReleaseClosed
      (And.intro E.feedbackAmplificationClosed
        (And.intro E.wavePropagationVelocityClosed
          E.refractorinessClosed)))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse