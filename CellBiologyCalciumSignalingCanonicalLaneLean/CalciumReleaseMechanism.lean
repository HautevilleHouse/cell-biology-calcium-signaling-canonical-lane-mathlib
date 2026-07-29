import HautevilleHouse.CellBiologyCalciumSignalingCanonicalLaneLean.CellBiologyCalciumSignalingObjects

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumReleaseMechanismPackage where
  ip3ReceptorPresent : Prop
  calciumInducedCalciumRelease : Prop
  receptorGating : Prop
  calciumFlux : Prop

structure CalciumReleaseMechanismEvidence (R : CalciumReleaseMechanismPackage) where
  ip3ReceptorPresentClosed : R.ip3ReceptorPresent
  calciumInducedCalciumReleaseClosed : R.calciumInducedCalciumRelease
  receptorGatingClosed : R.receptorGating
  calciumFluxClosed : R.calciumFlux

def CalciumReleaseMechanismClosed (R : CalciumReleaseMechanismPackage) : Prop :=
  R.ip3ReceptorPresent ∧ R.calciumInducedCalciumRelease ∧ R.receptorGating ∧ R.calciumFlux

theorem calcium_release_mechanism_closed_from_evidence
    (R : CalciumReleaseMechanismPackage) (E : CalciumReleaseMechanismEvidence R) :
    CalciumReleaseMechanismClosed R := by
  exact And.intro E.ip3ReceptorPresentClosed
    (And.intro E.calciumInducedCalciumReleaseClosed
      (And.intro E.receptorGatingClosed E.calciumFluxClosed))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse