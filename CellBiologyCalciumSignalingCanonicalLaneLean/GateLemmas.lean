import CellBiologyCalciumSignalingCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse
