import CellBiologyCalciumSignalingCanonicalLaneLean.PerelmanAnalyticProof

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CurvatureAnalyticEvidenceTerms {G : IP3ReceptorBindingPackage}
    (C : CurvatureAnalyticCertificate G) where
  riemannTensorSymmetries : C.riemannTensorSymmetries
  bianchiIdentities : C.bianchiIdentities
  ricciContractionLaw : C.ricciContractionLaw
  scalarTraceLaw : C.scalarTraceLaw
  curvatureEvolutionInputs : C.curvatureEvolutionInputs
  curvatureClosed : IP3ReceptorBindingClosed G

def CurvatureAnalyticCertificate.evidenceTerms {G : IP3ReceptorBindingPackage}
    (C : CurvatureAnalyticCertificate G) : CurvatureAnalyticEvidenceTerms C :=
  {
    riemannTensorSymmetries := C.riemannTensorSymmetriesClosed
    bianchiIdentities := C.bianchiIdentitiesClosed
    ricciContractionLaw := C.ricciContractionLawClosed
    scalarTraceLaw := C.scalarTraceLawClosed
    curvatureEvolutionInputs := C.curvatureEvolutionInputsClosed
    curvatureClosed := ip3_receptor_binding_closed_from_evidence G C.curvatureEvidence
  }

structure HamiltonDeTurckEvidenceTerms {G : IP3ReceptorBindingPackage}
    {F : CalciumFluxPDEPackage G} (H : CalciumFluxPDEAnalyticCertificate F) where
  gaugeChoice : H.gaugeChoice
  stronglyParabolicReduction : H.stronglyParabolicReduction
  deTurckVectorField : H.deTurckVectorField
  pullbackRecoversCalciumFlux : H.pullbackRecoversCalciumFlux
  uniquenessCompatibility : H.uniquenessCompatibility
  flowClosed : CalciumFluxPDEClosed F

def CalciumFluxPDEAnalyticCertificate.evidenceTerms {G : IP3ReceptorBindingPackage}
    {F : CalciumFluxPDEPackage G} (H : CalciumFluxPDEAnalyticCertificate F) :
    HamiltonDeTurckEvidenceTerms H :=
  {
    gaugeChoice := H.gaugeChoiceClosed
    stronglyParabolicReduction := H.stronglyParabolicReductionClosed
    deTurckVectorField := H.deTurckVectorFieldClosed
    pullbackRecoversCalciumFlux := H.pullbackRecoversCalciumFluxClosed
    uniquenessCompatibility := H.uniquenessCompatibilityClosed
    flowClosed := calcium_flux_pde_closed_from_evidence F H.flowEvidence
  }

structure ShortTimeEvidenceTerms {G : IP3ReceptorBindingPackage}
    {F : CalciumFluxPDEPackage G} {S : ShortTimeExistencePackage F}
    (C : ShortTimeAnalyticCertificate S) where
  parabolicRegularity : C.parabolicRegularity
  localExistenceInterval : C.localExistenceInterval
  uniquenessOnOverlap : C.uniquenessOnOverlap
  continuationCriterion : C.continuationCriterion
  shortTimeClosed : ShortTimeExistenceClosed S

def ShortTimeAnalyticCertificate.evidenceTerms {G : IP3ReceptorBindingPackage}
    {F : CalciumFluxPDEPackage G} {S : ShortTimeExistencePackage F}
    (C : ShortTimeAnalyticCertificate S) : ShortTimeEvidenceTerms C :=
  {
    parabolicRegularity := C.parabolicRegularityClosed
    localExistenceInterval := C.localExistenceIntervalClosed
    uniquenessOnOverlap := C.uniquenessOnOverlapClosed
    continuationCriterion := C.continuationCriterionClosed
    shortTimeClosed := short_time_existence_closed_from_evidence S C.shortTimeEvidence
  }

structure EntropyEvidenceTerms {G : IP3ReceptorBindingPackage}
    {F : CalciumFluxPDEPackage G} {S : ShortTimeExistencePackage F}
    {E : CalciumWaveEntropyPackage S} (C : EntropyAnalyticCertificate E) where
  conjugateHeatEquation : C.conjugateHeatEquation
  wFunctionalDefined : C.wFunctionalDefined
  muFunctionalDefined : C.muFunctionalDefined
  entropyMonotonicityFormula : C.entropyMonotonicityFormula
  reducedVolumeMonotonicity : C.reducedVolumeMonotonicity
  entropyClosed : CalciumWaveEntropyClosed E

def EntropyAnalyticCertificate.evidenceTerms {G : IP3ReceptorBindingPackage}
    {F : CalciumFluxPDEPackage G} {S : ShortTimeExistencePackage F}
    {E : CalciumWaveEntropyPackage S} (C : EntropyAnalyticCertificate E) :
    EntropyEvidenceTerms C :=
  {
    conjugateHeatEquation := C.conjugateHeatEquationClosed
    wFunctionalDefined := C.wFunctionalDefinedClosed
    muFunctionalDefined := C.muFunctionalDefinedClosed
    entropyMonotonicityFormula := C.entropyMonotonicityFormulaClosed
    reducedVolumeMonotonicity := C.reducedVolumeMonotonicityClosed
    entropyClosed := calcium_wave_entropy_closed_from_evidence E C.entropyEvidence
  }

structure NoncollapsingEvidenceTerms {G : IP3ReceptorBindingPackage}
    {F : CalciumFluxPDEPackage G} {S : ShortTimeExistencePackage F}
    {E : CalciumWaveEntropyPackage S} {N : NoncollapsingPackage E}
    (C : NoncollapsingAnalyticCertificate N) where
  noLocalCollapsing : C.noLocalCollapsing
  scaleInvariantVolumeLowerBound : C.scaleInvariantVolumeLowerBound
  curvatureScaleCompatibility : C.curvatureScaleCompatibility
  ancientSolutionCompactnessInput : C.ancientSolutionCompactnessInput
  noncollapsingClosed : NoncollapsingClosed N

def NoncollapsingAnalyticCertificate.evidenceTerms {G : IP3ReceptorBindingPackage}
    {F : CalciumFluxPDEPackage G} {S : ShortTimeExistencePackage F}
    {E : CalciumWaveEntropyPackage S} {N : NoncollapsingPackage E}
    (C : NoncollapsingAnalyticCertificate N) : NoncollapsingEvidenceTerms C :=
  {
    noLocalCollapsing := C.noLocalCollapsingClosed
    scaleInvariantVolumeLowerBound := C.scaleInvariantVolumeLowerBoundClosed
    curvatureScaleCompatibility := C.curvatureScaleCompatibilityClosed
    ancientSolutionCompactnessInput := C.ancientSolutionCompactnessInputClosed
    noncollapsingClosed := noncollapsing_closed_from_evidence N C.noncollapsingEvidence
  }

structure SingularityEvidenceTerms {G : IP3ReceptorBindingPackage}
    {F : CalciumFluxPDEPackage G} {S : ShortTimeExistencePackage F}
    {E : CalciumWaveEntropyPackage S} {N : NoncollapsingPackage E}
    {Q : CalciumWaveSingularityModelsPackage N} (C : SingularityAnalyticCertificate Q) where
  blowupSequenceChosen : C.blowupSequenceChosen
  pointedLimitExists : C.pointedLimitExists
  ancientKappaSolution : C.ancientKappaSolution
  asymptoticShrinkersControlled : C.asymptoticShrinkersControlled
  singularityModelsClosed : CalciumWaveSingularityModelsClosed Q

def SingularityAnalyticCertificate.evidenceTerms {G : IP3ReceptorBindingPackage}
    {F : CalciumFluxPDEPackage G} {S : ShortTimeExistencePackage F}
    {E : CalciumWaveEntropyPackage S} {N : NoncollapsingPackage E}
    {Q : CalciumWaveSingularityModelsPackage N} (C : SingularityAnalyticCertificate Q) :
    SingularityEvidenceTerms C :=
  {
    blowupSequenceChosen := C.blowupSequenceChosenClosed
    pointedLimitExists := C.pointedLimitExistsClosed
    ancientKappaSolution := C.ancientKappaSolutionClosed
    asymptoticShrinkersControlled := C.asymptoticShrinkersControlledClosed
    singularityModelsClosed := calcium_wave_singularity_models_closed_from_evidence Q C.singularityEvidence
  }

structure CanonicalNeighborhoodEvidenceTerms {G : IP3ReceptorBindingPackage}
    {F : CalciumFluxPDEPackage G} {S : ShortTimeExistencePackage F}
    {E : CalciumWaveEntropyPackage S} {N : NoncollapsingPackage E}
    {Q : CalciumWaveSingularityModelsPackage N} {C : CanonicalNeighborhoodsPackage Q}
    (P : CanonicalNeighborhoodAnalyticCertificate C) where
  highCurvaturePointClassified : P.highCurvaturePointClassified
  neckCapOrRoundComponent : P.neckCapOrRoundComponent
  surgeryScaleAdmissible : P.surgeryScaleAdmissible
  persistenceUnderFlow : P.persistenceUnderFlow
  canonicalNeighborhoodsClosed : CanonicalNeighborhoodsClosed C

def CanonicalNeighborhoodAnalyticCertificate.evidenceTerms {G : IP3ReceptorBindingPackage}
    {F : CalciumFluxPDEPackage G} {S : ShortTimeExistencePackage F}
    {E : CalciumWaveEntropyPackage S} {N : NoncollapsingPackage E}
    {Q : CalciumWaveSingularityModelsPackage N} {C : CanonicalNeighborhoodsPackage Q}
    (P : CanonicalNeighborhoodAnalyticCertificate C) : CanonicalNeighborhoodEvidenceTerms P :=
  {
    highCurvaturePointClassified := P.highCurvaturePointClassifiedClosed
    neckCapOrRoundComponent := P.neckCapOrRoundComponentClosed
    surgeryScaleAdmissible := P.surgeryScaleAdmissibleClosed
    persistenceUnderFlow := P.persistenceUnderFlowClosed
    canonicalNeighborhoodsClosed := canonical_neighborhoods_closed_from_evidence C P.canonicalNeighborhoodEvidence
  }

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse
