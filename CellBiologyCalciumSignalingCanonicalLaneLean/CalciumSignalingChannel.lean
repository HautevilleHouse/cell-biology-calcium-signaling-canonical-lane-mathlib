import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumChannelPackage where
  ip3ReceptorPresent : Prop
  ryanodineReceptorPresent : Prop
  channelDensity : Nat
  activationBySecondMessenger : Prop

structure CalciumChannelEvidence (C : CalciumChannelPackage) where
  ip3ReceptorPresentClosed : C.ip3ReceptorPresent
  ryanodineReceptorPresentClosed : C.ryanodineReceptorPresent
  channelDensityClosed : C.channelDensity > 0
  activationBySecondMessengerClosed : C.activationBySecondMessenger

def CalciumChannelClosed (C : CalciumChannelPackage) : Prop :=
  C.ip3ReceptorPresent ∧ C.ryanodineReceptorPresent ∧ C.channelDensity > 0 ∧ C.activationBySecondMessenger

theorem calcium_channel_closed_from_evidence (C : CalciumChannelPackage) (E : CalciumChannelEvidence C) :
    CalciumChannelClosed C := by
  exact And.intro E.ip3ReceptorPresentClosed
    (And.intro E.ryanodineReceptorPresentClosed
      (And.intro E.channelDensityClosed E.activationBySecondMessengerClosed))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse