import CellBiologyCalciumSignalingCanonicalLaneLean.PerelmanEntropy

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure NoncollapsingPackage {G : IP3ReceptorBindingPackage}
    {F : CalciumFluxPDEPackage G} {S : ShortTimeExistencePackage F}
    (Epkg : CalciumWaveEntropyPackage S) where
  scaleInvariantVolumeBound : Prop
  curvatureScaleControl : Prop
  blowupLimitNoncollapsed : Prop

structure NoncollapsingEvidence {G : IP3ReceptorBindingPackage}
    {F : CalciumFluxPDEPackage G} {S : ShortTimeExistencePackage F}
    {Epkg : CalciumWaveEntropyPackage S} (N : NoncollapsingPackage Epkg) where
  scaleInvariantVolumeBoundClosed : N.scaleInvariantVolumeBound
  curvatureScaleControlClosed : N.curvatureScaleControl
  blowupLimitNoncollapsedClosed : N.blowupLimitNoncollapsed

def NoncollapsingClosed {G : IP3ReceptorBindingPackage}
    {F : CalciumFluxPDEPackage G} {S : ShortTimeExistencePackage F}
    {Epkg : CalciumWaveEntropyPackage S} (N : NoncollapsingPackage Epkg) : Prop :=
  N.scaleInvariantVolumeBound ∧ N.curvatureScaleControl ∧ N.blowupLimitNoncollapsed

theorem noncollapsing_closed_from_evidence
    {G : IP3ReceptorBindingPackage} {F : CalciumFluxPDEPackage G}
    {S : ShortTimeExistencePackage F} {Epkg : CalciumWaveEntropyPackage S}
    (N : NoncollapsingPackage Epkg) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.scaleInvariantVolumeBoundClosed
    (And.intro E.curvatureScaleControlClosed E.blowupLimitNoncollapsedClosed)

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse
