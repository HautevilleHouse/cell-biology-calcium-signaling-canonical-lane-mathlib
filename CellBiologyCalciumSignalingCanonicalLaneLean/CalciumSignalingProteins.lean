import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumSignalingProteinsPackage where
  calmodulin : Prop
  calcineurin : Prop
  camKII : Prop
  proteinKinaseC : Prop
  proteinsCovered : Prop

structure CalciumSignalingProteinsEvidence (P : CalciumSignalingProteinsPackage) where
  calmodulinClosed : P.calmodulin
  calcineurinClosed : P.calcineurin
  camKIIClosed : P.camKII
  proteinKinaseCClosed : P.proteinKinaseC
  proteinsCoveredClosed : P.proteinsCovered

def CalciumSignalingProteinsClosed (P : CalciumSignalingProteinsPackage) : Prop :=
  P.calmodulin ∧ P.calcineurin ∧
  P.camKII ∧ P.proteinKinaseC ∧
  P.proteinsCovered

theorem calcium_signaling_proteins_closed_from_evidence
    (P : CalciumSignalingProteinsPackage) (E : CalciumSignalingProteinsEvidence P) :
    CalciumSignalingProteinsClosed P := by
  exact And.intro E.calmodulinClosed
    (And.intro E.calcineurinClosed
      (And.intro E.camKIIClosed
        (And.intro E.proteinKinaseCClosed
          E.proteinsCoveredClosed)))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse