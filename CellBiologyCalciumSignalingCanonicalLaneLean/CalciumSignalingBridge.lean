import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CalciumSignalingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.signalingCompetent

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def CalciumSignalingWitnessClosed (O : CalciumSignalingAdmittedObject) : Prop :=
  O.signalingCompetent

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse