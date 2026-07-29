import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCalciumSignalingCanonicalLaneLean.CalciumInducedCalciumRelease

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure SignalTransductionModelsPackage {P : CalciumWavePDEPackage}
    {I : IP3ReceptorDynamicsPackage P}
    {C : CalciumInducedCalciumReleasePackage P I} where
  downstreamKinaseActivation : Prop
  geneExpressionRegulation : Prop
  neurotransmitterRelease : Prop
  muscleContractionTrigger : Prop
  apoptosisSignaling : Prop

structure SignalTransductionModelsEvidence {P : CalciumWavePDEPackage}
    {I : IP3ReceptorDynamicsPackage P}
    {C : CalciumInducedCalciumReleasePackage P I}
    (S : SignalTransductionModelsPackage P I C) where
  downstreamKinaseActivationClosed : S.downstreamKinaseActivation
  geneExpressionRegulationClosed : S.geneExpressionRegulation
  neurotransmitterReleaseClosed : S.neurotransmitterRelease
  muscleContractionTriggerClosed : S.muscleContractionTrigger
  apoptosisSignalingClosed : S.apoptosisSignaling

def SignalTransductionModelsClosed {P : CalciumWavePDEPackage}
    {I : IP3ReceptorDynamicsPackage P}
    {C : CalciumInducedCalciumReleasePackage P I}
    (S : SignalTransductionModelsPackage P I C) : Prop :=
  S.downstreamKinaseActivation ∧ S.geneExpressionRegulation ∧
  S.neurotransmitterRelease ∧ S.muscleContractionTrigger ∧
  S.apoptosisSignaling

theorem signal_transduction_models_closed_from_evidence
    {P : CalciumWavePDEPackage} {I : IP3ReceptorDynamicsPackage P}
    {C : CalciumInducedCalciumReleasePackage P I}
    (S : SignalTransductionModelsPackage P I C)
    (E : SignalTransductionModelsEvidence S) :
    SignalTransductionModelsClosed S := by
  exact And.intro E.downstreamKinaseActivationClosed
    (And.intro E.geneExpressionRegulationClosed
      (And.intro E.neurotransmitterReleaseClosed
        (And.intro E.muscleContractionTriggerClosed
          E.apoptosisSignalingClosed)))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse