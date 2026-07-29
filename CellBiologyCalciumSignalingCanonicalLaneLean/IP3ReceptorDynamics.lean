import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCalciumSignalingCanonicalLaneLean.CalciumWavePDE

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure IP3ReceptorDynamicsPackage {P : CalciumWavePDEPackage} where
  receptorType : Type u
  openProbability : Prop
  calciumDependence : Prop
  ip3Binding : Prop
  allostericRegulation : Prop
  receptorInactivation : Prop

structure IP3ReceptorDynamicsEvidence {P : CalciumWavePDEPackage}
    (I : IP3ReceptorDynamicsPackage P) where
  openProbabilityClosed : I.openProbability
  calciumDependenceClosed : I.calciumDependence
  ip3BindingClosed : I.ip3Binding
  allostericRegulationClosed : I.allostericRegulation
  receptorInactivationClosed : I.receptorInactivation

def IP3ReceptorDynamicsClosed {P : CalciumWavePDEPackage}
    (I : IP3ReceptorDynamicsPackage P) : Prop :=
  I.openProbability ∧ I.calciumDependence ∧
  I.ip3Binding ∧ I.allostericRegulation ∧
  I.receptorInactivation

theorem ip3_receptor_dynamics_closed_from_evidence
    {P : CalciumWavePDEPackage} (I : IP3ReceptorDynamicsPackage P)
    (E : IP3ReceptorDynamicsEvidence I) : 
    IP3ReceptorDynamicsClosed I := by
  exact And.intro E.openProbabilityClosed
    (And.intro E.calciumDependenceClosed
      (And.intro E.ip3BindingClosed
        (And.intro E.allostericRegulationClosed
          E.receptorInactivationClosed)))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse