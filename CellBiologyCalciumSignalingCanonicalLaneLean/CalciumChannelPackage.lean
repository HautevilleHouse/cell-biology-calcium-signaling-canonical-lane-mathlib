import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumChannelPackage where
  channelType : Type u
  voltageSensitivity : Prop
  ligandBinding : Prop
  calciumConductance : Prop
  activationMechanism : Prop
  inactivationMechanism : Prop

structure CalciumChannelEvidence (C : CalciumChannelPackage) where
  voltageSensitivityClosed : C.voltageSensitivity
  ligandBindingClosed : C.ligandBinding
  calciumConductanceClosed : C.calciumConductance
  activationMechanismClosed : C.activationMechanism
  inactivationMechanismClosed : C.inactivationMechanism

def CalciumChannelClosed (C : CalciumChannelPackage) : Prop :=
  C.voltageSensitivity ∧ C.ligandBinding ∧ C.calciumConductance ∧
  C.activationMechanism ∧ C.inactivationMechanism

theorem calcium_channel_closed_from_evidence (C : CalciumChannelPackage)
    (E : CalciumChannelEvidence C) : CalciumChannelClosed C := by
  exact And.intro E.voltageSensitivityClosed
    (And.intro E.ligandBindingClosed
      (And.intro E.calciumConductanceClosed
        (And.intro E.activationMechanismClosed
          E.inactivationMechanismClosed)))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse