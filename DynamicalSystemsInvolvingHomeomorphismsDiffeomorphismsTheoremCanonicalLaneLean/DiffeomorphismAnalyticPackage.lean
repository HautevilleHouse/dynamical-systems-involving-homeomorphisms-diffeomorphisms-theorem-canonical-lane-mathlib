import DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean.TopologicalDynamicsPackage

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure DiffeomorphismAnalyticPackage (O : DynamicalAdmittedObject) where
  smoothAction : Prop
  derivativeEstimates : Prop
  linearizationAroundFixedPoints : Prop
  stableManifoldTheorem : Prop

structure DiffeomorphismAnalyticEvidence (O : DynamicalAdmittedObject) (A : DiffeomorphismAnalyticPackage O) where
  smoothActionClosed : A.smoothAction
  derivativeEstimatesClosed : A.derivativeEstimates
  linearizationAroundFixedPointsClosed : A.linearizationAroundFixedPoints
  stableManifoldTheoremClosed : A.stableManifoldTheorem

def DiffeomorphismAnalyticClosed (O : DynamicalAdmittedObject) (A : DiffeomorphismAnalyticPackage O) : Prop :=
  A.smoothAction ∧ A.derivativeEstimates ∧ A.linearizationAroundFixedPoints ∧ A.stableManifoldTheorem

theorem diffeomorphism_analytic_closed_from_evidence (O : DynamicalAdmittedObject) (A : DiffeomorphismAnalyticPackage O) (E : DiffeomorphismAnalyticEvidence O A) : DiffeomorphismAnalyticClosed O A := by
  exact And.intro E.smoothActionClosed (And.intro E.derivativeEstimatesClosed (And.intro E.linearizationAroundFixedPointsClosed E.stableManifoldTheoremClosed))

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse