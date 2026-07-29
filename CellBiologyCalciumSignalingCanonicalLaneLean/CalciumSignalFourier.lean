import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumSignalFourierPackage where
  signalSpace : Type u
  frequencySpace : Type v
  fourierTransform : (signalSpace → ℝ) → (frequencySpace → ℂ)
  inverseFourierTransform : (frequencySpace → ℂ) → (signalSpace → ℝ)
  inversionTheorem : Prop
  convolutionTheorem : Prop

structure CalciumSignalFourierEvidence (F : CalciumSignalFourierPackage) where
  inversionTheoremClosed : F.inversionTheorem
  convolutionTheoremClosed : F.convolutionTheorem

def CalciumSignalFourierClosed (F : CalciumSignalFourierPackage) : Prop :=
  F.inversionTheorem ∧ F.convolutionTheorem

theorem calcium_signal_fourier_closed_from_evidence
    (F : CalciumSignalFourierPackage) (E : CalciumSignalFourierEvidence F) :
    CalciumSignalFourierClosed F := by
  exact And.intro E.inversionTheoremClosed E.convolutionTheoremClosed

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse