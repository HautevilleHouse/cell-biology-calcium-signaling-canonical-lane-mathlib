import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCalciumSignalingCanonicalLaneLean.CalciumSignalingChannelModels
import HautevilleHouse.CellBiologyCalciumSignalingCanonicalLaneLean.FluorescenceImagingModel
import HautevilleHouse.CellBiologyCalciumSignalingCanonicalLaneLean.CalciumDecayKinetics
import HautevilleHouse.CellBiologyCalciumSignalingCanonicalLaneLean.CalciumSignalingPathway

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CalciumSignalingChannelModelsClosed A ∧ FluorescenceImagingModelClosed A ∧ CalciumDecayKineticsClosed A ∧ CalciumSignalingPathwayClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ ?_))
  · exact CalciumSignalingChannelModelsClosed A
  · exact FluorescenceImagingModelClosed A
  · exact CalciumDecayKineticsClosed A
  · exact CalciumSignalingPathwayClosed A

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCalciumSignalingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_calcium_signaling_endgame (A : AdmissibleClass) : ConstrainedCalciumSignalingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse