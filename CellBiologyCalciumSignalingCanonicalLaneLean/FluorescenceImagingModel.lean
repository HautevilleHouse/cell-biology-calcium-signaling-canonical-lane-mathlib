import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure FluorescentIndicator where
  indicatorName : String
  kd : Float
  hillCoefficient : Float
  quantumYield : Float
  excitationWavelength : Float
  emissionWavelength : Float

structure ImagingSystem where
  samplingRate : Float
  pixelSize : Float
  noiseModel : String

structure FluorescenceImagingModel where
  indicator : FluorescentIndicator
  system : ImagingSystem
  baselineFluorescence : Float
  signalToNoiseRatio : Float
  motionCorrectionApplied : Bool
  bleachingCorrectionApplied : Bool
  neuropilCorrectionApplied : Bool

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse