import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure AdmissibleDynamicalSystem where
  phaseSpace : Type u
  dynamics : phaseSpace → phaseSpace
  invertible : Prop
  differentiable : Prop
  invertibleTerm : invertible
  differentiableTerm : differentiable

structure AdmissibleClass where
  system : AdmissibleDynamicalSystem
  invariantMeasureExists : Prop
  topologicalEntropyDefined : Prop
  invariantMeasureExistsTerm : invariantMeasureExists
  topologicalEntropyDefinedTerm : topologicalEntropyDefined
  dynamicalWitness : invariantMeasureExists ∨ topologicalEntropyDefined

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.invariantMeasureExistsTerm : Prop) ∧ (A.topologicalEntropyDefinedTerm : Prop) ∧ (A.dynamicalWitness)

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse