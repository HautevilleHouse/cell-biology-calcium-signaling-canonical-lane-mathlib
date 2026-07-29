import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure StoreOperatedCalciumEntryPackage {F : CalciumFluxPackage} {C : ChannelConductancePackage F} {K : IP3ReceptorKineticsPackage F C} {W : CalciumWavePropagationPackage F C K} where
  SOCChannelType : Type
  stromalInteractionMolecule : Type
  ERCaDepletionSensor : Type
  storeOperatedCurrent : Prop
  activationBySTIM1 : Prop
  oraiChannelInvolvement : Prop
  pharmacologicalBlockers : Prop

structure StoreOperatedCalciumEntryEvidence {F : CalciumFluxPackage} {C : ChannelConductancePackage F} {K : IP3ReceptorKineticsPackage F C} {W : CalciumWavePropagationPackage F C K} (S : StoreOperatedCalciumEntryPackage F C K W) where
  storeOperatedCurrentClosed : S.storeOperatedCurrent
  activationBySTIM1Closed : S.activationBySTIM1
  oraiChannelInvolvementClosed : S.oraiChannelInvolvement
  pharmacologicalBlockersClosed : S.pharmacologicalBlockers

def StoreOperatedCalciumEntryClosed {F : CalciumFluxPackage} {C : ChannelConductancePackage F} {K : IP3ReceptorKineticsPackage F C} {W : CalciumWavePropagationPackage F C K} (S : StoreOperatedCalciumEntryPackage F C K W) : Prop :=
  S.storeOperatedCurrent ∧ S.activationBySTIM1 ∧ S.oraiChannelInvolvement ∧ S.pharmacologicalBlockers

theorem store_operated_calcium_entry_closed_from_evidence {F : CalciumFluxPackage} {C : ChannelConductancePackage F} {K : IP3ReceptorKineticsPackage F C} {W : CalciumWavePropagationPackage F C K} (S : StoreOperatedCalciumEntryPackage F C K W) (E : StoreOperatedCalciumEntryEvidence S) : StoreOperatedCalciumEntryClosed S := by
  exact And.intro E.storeOperatedCurrentClosed (
    And.intro E.activationBySTIM1Closed (
      And.intro E.oraiChannelInvolvementClosed E.pharmacologicalBlockersClosed))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse