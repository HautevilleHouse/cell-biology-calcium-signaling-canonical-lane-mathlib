import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure ReleaseMechanism where
  mechanismType : String
  sourceLocation : String
  activatedBy : String
  releaseRate : Float
  duration : Float

structure UptakeMechanism where
  mechanismType : String
  pumpType : String
  capacity : Float
  affinity : Float

extrusionMechanism : String -> Type
extrusionMechanism := fun t => String

structure RegulatoryFeedback where
  feedbackType : String
  target : String
  effect : String
  threshold : Float

structure CalciumSignalingPathway where
  release : List ReleaseMechanism
  uptake : List UptakeMechanism
  extrusion : String
  regulation : List RegulatoryFeedback
  totalCaFlux : Float
  steadyStateCa : Float

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse