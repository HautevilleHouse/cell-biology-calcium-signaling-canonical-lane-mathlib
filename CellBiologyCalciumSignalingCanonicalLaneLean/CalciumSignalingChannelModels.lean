import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumChannel where
  channelType : String
  voltageGated : Prop
  conductance : Float
  activationTime : Float
  inactivationTime : Float

structure BufferSystem where
  bufferType : String
  bindingRate : Float
  unbindingRate : Float
  totalConcentration : Float

structure CalciumSource where
  sourceType : String
  releaseRate : Float
  location : String

structure CalciumSignalingChannelModels where
  channels : List CalciumChannel
  buffers : List BufferSystem
  sources : List CalciumSource
  caBasalConcentration : Float
  caDiffusionCoefficient : Float

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse