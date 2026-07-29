import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumFluxPackage where
  compartment : Type
  concentration : Type
  fluxRate : Type
  diffusionCoefficient : Prop
  bufferingEffect : Prop
  calciumPumpActivity : Prop
  leakFluxPresence : Prop
  fluxConservationLaw : Prop

structure CalciumFluxEvidence (C : CalciumFluxPackage) where
  diffusionCoefficientClosed : C.diffusionCoefficient
  bufferingEffectClosed : C.bufferingEffect
  calciumPumpActivityClosed : C.calciumPumpActivity
  leakFluxPresenceClosed : C.leakFluxPresence
  fluxConservationLawClosed : C.fluxConservationLaw

def CalciumFluxClosed (C : CalciumFluxPackage) : Prop :=
  C.diffusionCoefficient ∧ C.bufferingEffect ∧ C.calciumPumpActivity ∧ C.leakFluxPresence ∧ C.fluxConservationLaw

theorem calcium_flux_closed_from_evidence (C : CalciumFluxPackage) (E : CalciumFluxEvidence C) : CalciumFluxClosed C := by
  exact And.intro E.diffusionCoefficientClosed (
    And.intro E.bufferingEffectClosed (
      And.intro E.calciumPumpActivityClosed (
        And.intro E.leakFluxPresenceClosed E.fluxConservationLawClosed)))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse