import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumSignalingAdmittedObject where
  cellType : Type
  hasReceptors : Prop
  hasChannels : Prop
  signalingCompetent : Prop

structure AdmissibleClass where
  object : CalciumSignalingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CalciumSignalingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse