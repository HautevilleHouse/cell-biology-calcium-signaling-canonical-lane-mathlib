import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure SamplingTheoremPackage where
  signalSpace : Type u
  samplingPoints : Type v
  bandlimitedCondition : Prop
  reconstructionFormula : Prop
  nyquistCriterion : Prop

structure SamplingTheoremEvidence (S : SamplingTheoremPackage) where
  bandlimitedConditionClosed : S.bandlimitedCondition
  reconstructionFormulaClosed : S.reconstructionFormula
  nyquistCriterionClosed : S.nyquistCriterion

def SamplingTheoremClosed (S : SamplingTheoremPackage) : Prop :=
  S.bandlimitedCondition ∧ S.reconstructionFormula ∧ S.nyquistCriterion

theorem sampling_theorem_closed_from_evidence
    (S : SamplingTheoremPackage) (E : SamplingTheoremEvidence S) :
    SamplingTheoremClosed S := by
  exact And.intro E.bandlimitedConditionClosed
    (And.intro E.reconstructionFormulaClosed E.nyquistCriterionClosed)

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse