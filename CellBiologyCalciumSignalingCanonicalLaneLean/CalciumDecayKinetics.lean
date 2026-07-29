import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure DecayComponent where
  componentName : String
  amplitude : Float
  timeConstant : Float
  mechanism : String
  conditionDependent : Bool

structure DecayKineticsEvidence where
  fastComponentClosed : DecayComponent -> Prop
  slowComponentClosed : DecayComponent -> Prop
  spontaneousReleaseClosed : DecayComponent -> Prop
  totalDecayConsistent : Prop
  decayStoichiometryPreserved : Prop
  decayStoichiometryPreservedTerm : decayStoichiometryPreserved

def DecayKineticsClosed (D : DecayComponent) : Prop :=
  D.amplitude > 0 ∧ D.timeConstant > 0

theorem decay_kinetics_closed_from_evidence (D : DecayComponent) (E : DecayKineticsEvidence) : DecayKineticsClosed D := by
  exact And.intro (E.fastComponentClosed D) (E.slowComponentClosed D)

structure CalciumDecayKinetics where
  fastDecay : DecayComponent
  slowDecay : DecayComponent
  spontaneousReleaseDecay : DecayComponent
  totalDecayRate : Float
  evidence : DecayKineticsEvidence
  decayClosedEvidence : DecayKineticsClosed fastDecay
  decayClosedEvidence2 : DecayKineticsClosed slowDecay

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse