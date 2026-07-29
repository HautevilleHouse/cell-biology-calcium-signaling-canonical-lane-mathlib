import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumSignalingPathwaysPackage where
  ip3ReceptorActivation : Prop
  ryanodineReceptorActivation : Prop
  storeOperatedEntry : Prop
  plasmaMembraneChannels : Prop
  signalingPathwaysCovered : Prop

structure CalciumSignalingPathwaysEvidence (P : CalciumSignalingPathwaysPackage) where
  ip3ReceptorActivationClosed : P.ip3ReceptorActivation
  ryanodineReceptorActivationClosed : P.ryanodineReceptorActivation
  storeOperatedEntryClosed : P.storeOperatedEntry
  plasmaMembraneChannelsClosed : P.plasmaMembraneChannels
  signalingPathwaysCoveredClosed : P.signalingPathwaysCovered

def CalciumSignalingPathwaysClosed (P : CalciumSignalingPathwaysPackage) : Prop :=
  P.ip3ReceptorActivation ∧ P.ryanodineReceptorActivation ∧
  P.storeOperatedEntry ∧ P.plasmaMembraneChannels ∧
  P.signalingPathwaysCovered

theorem calcium_signaling_pathways_closed_from_evidence
    (P : CalciumSignalingPathwaysPackage) (E : CalciumSignalingPathwaysEvidence P) :
    CalciumSignalingPathwaysClosed P := by
  exact And.intro E.ip3ReceptorActivationClosed
    (And.intro E.ryanodineReceptorActivationClosed
      (And.intro E.storeOperatedEntryClosed
        (And.intro E.plasmaMembraneChannelsClosed
          E.signalingPathwaysCoveredClosed)))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse