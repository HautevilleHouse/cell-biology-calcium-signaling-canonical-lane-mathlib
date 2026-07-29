import CellBiologyCalciumSignalingCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure AdmissibleClass where
  object : CalciumAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CalciumWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse
