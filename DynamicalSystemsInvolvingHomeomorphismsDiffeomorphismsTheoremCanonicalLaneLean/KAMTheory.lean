import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure KAMStabilityPackage (M : Type u) [TopologicalSpace M] [ChartedSpace (ℝ^n) M] [SmoothManifoldWithCorners (ℝ^n) M] where
  hamiltonianSystem : DynamicalSystem M
  invariantTori : Set M
  perturbation : M → ℝ
  smallnessCondition : Prop
  persistenceOfTori : Prop
  smallnessConditionClosed : smallnessCondition
  persistenceOfToriClosed : persistenceOfTori

structure KAMAdmissibleEvidence (M : Type u) [TopologicalSpace M] [ChartedSpace (ℝ^n) M] [SmoothManifoldWithCorners (ℝ^n) M] (K : KAMStabilityPackage M) where
  smallnessConditionClosed : K.smallnessCondition
  persistenceOfToriClosed : K.persistenceOfTori

def KAMStabilityClosed (M : Type u) [TopologicalSpace M] [ChartedSpace (ℝ^n) M] [SmoothManifoldWithCorners (ℝ^n) M] (K : KAMStabilityPackage M) : Prop :=
  K.smallnessCondition ∧ K.persistenceOfTori

theorem kam_stability_closed_from_evidence (M : Type u) [TopologicalSpace M] [ChartedSpace (ℝ^n) M] [SmoothManifoldWithCorners (ℝ^n) M] (K : KAMStabilityPackage M) (E : KAMAdmissibleEvidence M K) : KAMStabilityClosed M K := by
  exact And.intro E.smallnessConditionClosed E.persistenceOfToriClosed

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse