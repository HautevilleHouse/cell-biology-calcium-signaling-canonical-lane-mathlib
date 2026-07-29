import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumReleasePackage where
  releaseSite : Type u
  ip3Receptor : Prop
  ryanodineReceptor : Prop
  localControl : Prop
  wavePropagation : Prop
  sparkGeneration : Prop

structure CalciumReleaseEvidence (R : CalciumReleasePackage) where
  ip3ReceptorClosed : R.ip3Receptor
  ryanodineReceptorClosed : R.ryanodineReceptor
  localControlClosed : R.localControl
  wavePropagationClosed : R.wavePropagation
  sparkGenerationClosed : R.sparkGeneration

def CalciumReleaseClosed (R : CalciumReleasePackage) : Prop :=
  R.ip3Receptor ∧ R.ryanodineReceptor ∧ R.localControl ∧
  R.wavePropagation ∧ R.sparkGeneration

theorem calcium_release_closed_from_evidence (R : CalciumReleasePackage)
    (E : CalciumReleaseEvidence R) : CalciumReleaseClosed R := by
  exact And.intro E.ip3ReceptorClosed
    (And.intro E.ryanodineReceptorClosed
      (And.intro E.localControlClosed
        (And.intro E.wavePropagationClosed
          E.sparkGenerationClosed)))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse