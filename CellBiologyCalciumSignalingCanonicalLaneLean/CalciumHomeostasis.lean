import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumHomeostasisPackage where
  restingCalciumLevel : Prop
  endoplasmicReticulumStore : Prop
  sarcoplasmicReticulumStore : Prop
  calciumExtrusionMechanisms : Prop
  homeostasisCovered : Prop

structure CalciumHomeostasisEvidence (H : CalciumHomeostasisPackage) where
  restingCalciumLevelClosed : H.restingCalciumLevel
  endoplasmicReticulumStoreClosed : H.endoplasmicReticulumStore
  sarcoplasmicReticulumStoreClosed : H.sarcoplasmicReticulumStore
  calciumExtrusionMechanismsClosed : H.calciumExtrusionMechanisms
  homeostasisCoveredClosed : H.homeostasisCovered

def CalciumHomeostasisClosed (H : CalciumHomeostasisPackage) : Prop :=
  H.restingCalciumLevel ∧ H.endoplasmicReticulumStore ∧
  H.sarcoplasmicReticulumStore ∧ H.calciumExtrusionMechanisms ∧
  H.homeostasisCovered

theorem calcium_homeostasis_closed_from_evidence
    (H : CalciumHomeostasisPackage) (E : CalciumHomeostasisEvidence H) :
    CalciumHomeostasisClosed H := by
  exact And.intro E.restingCalciumLevelClosed
    (And.intro E.endoplasmicReticulumStoreClosed
      (And.intro E.sarcoplasmicReticulumStoreClosed
        (And.intro E.calciumExtrusionMechanismsClosed
          E.homeostasisCoveredClosed)))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse