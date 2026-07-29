import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumOscillationsPackage where
  frequencyEncoding : Prop
  amplitudeModulation : Prop
  spikeShape : Prop
  intercellularPropagation : Prop
  oscillationsCovered : Prop

structure CalciumOscillationsEvidence (O : CalciumOscillationsPackage) where
  frequencyEncodingClosed : O.frequencyEncoding
  amplitudeModulationClosed : O.amplitudeModulation
  spikeShapeClosed : O.spikeShape
  intercellularPropagationClosed : O.intercellularPropagation
  oscillationsCoveredClosed : O.oscillationsCovered

def CalciumOscillationsClosed (O : CalciumOscillationsPackage) : Prop :=
  O.frequencyEncoding ∧ O.amplitudeModulation ∧
  O.spikeShape ∧ O.intercellularPropagation ∧
  O.oscillationsCovered

theorem calcium_oscillations_closed_from_evidence
    (O : CalciumOscillationsPackage) (E : CalciumOscillationsEvidence O) :
    CalciumOscillationsClosed O := by
  exact And.intro E.frequencyEncodingClosed
    (And.intro E.amplitudeModulationClosed
      (And.intro E.spikeShapeClosed
        (And.intro E.intercellularPropagationClosed
          E.oscillationsCoveredClosed)))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse