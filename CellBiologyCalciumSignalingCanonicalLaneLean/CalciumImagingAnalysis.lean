import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumImagingPackage where
  fluorescenceTimeSeries : Type
  noiseModel : Prop
  spikeDetection : Prop
  deconvolutionMethod : Prop

structure CalciumImagingEvidence (P : CalciumImagingPackage) where
  fluorescenceTimeSeriesClosed : P.fluorescenceTimeSeries
  noiseModelClosed : P.noiseModel
  spikeDetectionClosed : P.spikeDetection
  deconvolutionMethodClosed : P.deconvolutionMethod

def CalciumImagingClosed (P : CalciumImagingPackage) : Prop :=
  P.fluorescenceTimeSeries ∧ P.noiseModel ∧ P.spikeDetection ∧ P.deconvolutionMethod

theorem calcium_imaging_closed_from_evidence
    (P : CalciumImagingPackage) (E : CalciumImagingEvidence P) :
    CalciumImagingClosed P := by
  exact And.intro E.fluorescenceTimeSeriesClosed
    (And.intro E.noiseModelClosed
      (And.intro E.spikeDetectionClosed E.deconvolutionMethodClosed))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse