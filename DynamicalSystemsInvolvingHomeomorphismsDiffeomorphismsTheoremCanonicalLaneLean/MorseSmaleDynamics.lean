import DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure MorseSmaleSystem (M : Type u) [TopologicalSpace M] [ChartedSpace ℝ M] where
  vectorField : M → TangentSpace M
  criticalPoints : Set M
  hyperbolicCondition : Prop
  stableManifoldsTransverse : Prop
  closingLemmaApplicable : Prop

def MorseSmaleClosed (S : MorseSmaleSystem M) : Prop :=
  S.hyperbolicCondition ∧ S.stableManifoldsTransverse ∧ S.closingLemmaApplicable

theorem morse_smale_closure (S : MorseSmaleSystem M) : MorseSmaleClosed S := by
  exact And.intro S.hyperbolicCondition (And.intro S.stableManifoldsTransverse S.closingLemmaApplicable)

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse