import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure ChannelConductancePackage {F : CalciumFluxPackage} where
  channelType : Type
  openProbability : Type
  conductanceFormula : Prop
  voltageDependence : Prop
  ligandDependence : Prop
  timeConstant : Prop
  selectivityForCalcium : Prop

structure ChannelConductanceEvidence {F : CalciumFluxPackage} (C : ChannelConductancePackage F) where
  conductanceFormulaClosed : C.conductanceFormula
  voltageDependenceClosed : C.voltageDependence
  ligandDependenceClosed : C.ligandDependence
  timeConstantClosed : C.timeConstant
  selectivityForCalciumClosed : C.selectivityForCalcium

def ChannelConductanceClosed {F : CalciumFluxPackage} (C : ChannelConductancePackage F) : Prop :=
  C.conductanceFormula ∧ C.voltageDependence ∧ C.ligandDependence ∧ C.timeConstant ∧ C.selectivityForCalcium

theorem channel_conductance_closed_from_evidence {F : CalciumFluxPackage} (C : ChannelConductancePackage F) (E : ChannelConductanceEvidence C) : ChannelConductanceClosed C := by
  exact And.intro E.conductanceFormulaClosed (
    And.intro E.voltageDependenceClosed (
      And.intro E.ligandDependenceClosed (
        And.intro E.timeConstantClosed E.selectivityForCalciumClosed)))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse