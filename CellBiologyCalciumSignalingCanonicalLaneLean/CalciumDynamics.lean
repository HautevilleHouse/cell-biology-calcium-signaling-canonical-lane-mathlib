import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure CalciumDynamicsPackage where
  intracellularRelease : Prop
  calciumInflux : Prop
  calciumExtrusion : Prop
  calciumBuffering : Prop
  mitochondrialUptake : Prop
  dynamicsCovered : Prop

structure CalciumDynamicsEvidence (D : CalciumDynamicsPackage) where
  intracellularReleaseClosed : D.intracellularRelease
  calciumInfluxClosed : D.calciumInflux
  calciumExtrusionClosed : D.calciumExtrusion
  calciumBufferingClosed : D.calciumBuffering
  mitochondrialUptakeClosed : D.mitochondrialUptake
  dynamicsCoveredClosed : D.dynamicsCovered

def CalciumDynamicsClosed (D : CalciumDynamicsPackage) : Prop :=
  D.intracellularRelease ∧ D.calciumInflux ∧
  D.calciumExtrusion ∧ D.calciumBuffering ∧
  D.mitochondrialUptake ∧ D.dynamicsCovered

theorem calcium_dynamics_closed_from_evidence
    (D : CalciumDynamicsPackage) (E : CalciumDynamicsEvidence D) :
    CalciumDynamicsClosed D := by
  exact And.intro E.intracellularReleaseClosed
    (And.intro E.calciumInfluxClosed
      (And.intro E.calciumExtrusionClosed
        (And.intro E.calciumBufferingClosed
          (And.intro E.mitochondrialUptakeClosed
            E.dynamicsCoveredClosed))))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse