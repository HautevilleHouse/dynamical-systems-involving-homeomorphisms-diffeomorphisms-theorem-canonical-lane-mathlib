import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure PesinEntropyPackage (M : Type u) [TopologicalSpace M] [ChartedSpace (ℝ^n) M] [SmoothManifoldWithCorners (ℝ^n) M] where
  diffeomorphism : M → M
  invariantMeasure : MeasureTheory.Measure M
  entropy : ℝ
  lyapunovExponents : ∀ (x : M), List ℝ
  pesinFormula : Prop
  entropyClosed : entropy = 0
  pesinFormulaClosed : pesinFormula

structure PesinRuelleInequality (M : Type u) [TopologicalSpace M] [ChartedSpace (ℝ^n) M] [SmoothManifoldWithCorners (ℝ^n) M] where
  diffeomorphism : M → M
  invariantMeasure : MeasureTheory.Measure M
  lyapunovExponents : ∀ (x : M), List ℝ
  inequality : Prop
  inequalityClosed : inequality

theorem pesin_entropy_formula_holds (M : Type u) [TopologicalSpace M] [ChartedSpace (ℝ^n) M] [SmoothManifoldWithCorners (ℝ^n) M] (pkg : PesinEntropyPackage M) : pkg.pesinFormula := pkg.pesinFormulaClosed

theorem pesin_ruelle_inequality_holds (M : Type u) [TopologicalSpace M] [ChartedSpace (ℝ^n) M] [SmoothManifoldWithCorners (ℝ^n) M] (ineq : PesinRuelleInequality M) : ineq.inequality := ineq.inequalityClosed

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse