import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure FilterDesignPackage where
  signalSpace : Type u
  filterFamily : Type v
  impulseResponse : (filterFamily → ℝ) → (ℝ → ℝ)
  frequencyResponse : (filterFamily → ℝ) → (ℝ → ℂ)
  causalityCondition : Prop
  stabilityCondition : Prop
  linearPhaseCondition : Prop

structure FilterDesignEvidence (F : FilterDesignPackage) where
  causalityConditionClosed : F.causalityCondition
  stabilityConditionClosed : F.stabilityCondition
  linearPhaseConditionClosed : F.linearPhaseCondition

def FilterDesignClosed (F : FilterDesignPackage) : Prop :=
  F.causalityCondition ∧ F.stabilityCondition ∧ F.linearPhaseCondition

theorem filter_design_closed_from_evidence
    (F : FilterDesignPackage) (E : FilterDesignEvidence F) :
    FilterDesignClosed F := by
  exact And.intro E.causalityConditionClosed
    (And.intro E.stabilityConditionClosed E.linearPhaseConditionClosed)

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse