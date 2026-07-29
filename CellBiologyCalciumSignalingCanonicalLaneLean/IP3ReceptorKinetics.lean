import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure IP3ReceptorKineticsPackage {F : CalciumFluxPackage} {C : ChannelConductancePackage F} where
  IP3BindingSite : Type
  calciumBindingSite : Type
  openStateProbability : Prop
  activationByIP3 : Prop
  bellShapedCaDependence : Prop
  inactivationTime : Prop
  clusteredArrangement : Prop

structure IP3ReceptorKineticsEvidence {F : CalciumFluxPackage} {C : ChannelConductancePackage F} (K : IP3ReceptorKineticsPackage F C) where
  openStateProbabilityClosed : K.openStateProbability
  activationByIP3Closed : K.activationByIP3
  bellShapedCaDependenceClosed : K.bellShapedCaDependence
  inactivationTimeClosed : K.inactivationTime
  clusteredArrangementClosed : K.clusteredArrangement

def IP3ReceptorKineticsClosed {F : CalciumFluxPackage} {C : ChannelConductancePackage F} (K : IP3ReceptorKineticsPackage F C) : Prop :=
  K.openStateProbability ∧ K.activationByIP3 ∧ K.bellShapedCaDependence ∧ K.inactivationTime ∧ K.clusteredArrangement

theorem ip3_receptor_kinetics_closed_from_evidence {F : CalciumFluxPackage} {C : ChannelConductancePackage F} (K : IP3ReceptorKineticsPackage F C) (E : IP3ReceptorKineticsEvidence K) : IP3ReceptorKineticsClosed K := by
  exact And.intro E.openStateProbabilityClosed (
    And.intro E.activationByIP3Closed (
      And.intro E.bellShapedCaDependenceClosed (
        And.intro E.inactivationTimeClosed E.clusteredArrangementClosed)))

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse