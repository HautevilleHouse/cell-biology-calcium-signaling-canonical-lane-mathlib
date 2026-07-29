import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCalciumSignalingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CalciumWavePDEClosed A.object ∧
  IP3ReceptorDynamicsClosed A.object ∧
  CalciumInducedCalciumReleaseClosed A.object ∧
  SignalTransductionModelsClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  sorry

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse