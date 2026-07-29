import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumBufferingPackage where
  bufferProteinsPresent : Prop
  bindingAffinity : Nat
  bufferingCapacity : Nat
  effectOnFreeCalcium : Prop

structure CalciumBufferingEvidence (B : CalciumBufferingPackage) where
  bufferProteinsPresentClosed : B.bufferProteinsPresent
  bindingAffinityClosed : B.bindingAffinity > 0
  bufferingCapacityClosed : B.bufferingCapacity > 0
  effectOnFreeCalciumClosed : B.effectOnFreeCalcium

def CalciumBufferingClosed (B : CalciumBufferingPackage) : Prop :=
  B.bufferProteinsPresent ∧ B.bindingAffinity > 0 ∧ B.bufferingCapacity > 0 ∧ B.effectOnFreeCalcium

theorem calcium_buffering_closed_from_evidence (B : CalciumBufferingPackage) (E : CalciumBufferingEvidence B) :
    CalciumBufferingClosed B := by
  exact And.intro E.bufferProteinsPresentClosed
    (And.intro E.bindingAffinityClosed
      (And.intro E.bufferingCapacityClosed E.effectOnFreeCalciumClosed))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse