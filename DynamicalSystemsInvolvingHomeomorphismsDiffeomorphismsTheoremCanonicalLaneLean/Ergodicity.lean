import DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean.StableManifold

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure ErgodicityPackage {D : DiffeomorphismPackage} {H : HyperbolicityPackage D} {S : StableManifoldPackage H} where
  invariantMeasure : Type u
  ergodicDecomposition : Prop
  almostEverywhereAsymptotic : Prop
  invariantMeasureDefined : Prop
  ergodicDecompositionTerm : ergodicDecomposition
  almostEverywhereAsymptoticTerm : almostEverywhereAsymptotic
  invariantMeasureDefinedTerm : invariantMeasureDefined

structure ErgodicityEvidence {D : DiffeomorphismPackage} {H : HyperbolicityPackage D} {S : StableManifoldPackage H} (E : ErgodicityPackage S) where
  ergodicDecompositionClosed : E.ergodicDecomposition
  almostEverywhereAsymptoticClosed : E.almostEverywhereAsymptotic
  invariantMeasureDefinedClosed : E.invariantMeasureDefined

def ErgodicityClosed {D : DiffeomorphismPackage} {H : HyperbolicityPackage D} {S : StableManifoldPackage H} (E : ErgodicityPackage S) : Prop :=
  E.ergodicDecomposition ∧ E.almostEverywhereAsymptotic ∧ E.invariantMeasureDefined

theorem ergodicity_closed_from_evidence {D : DiffeomorphismPackage} {H : HyperbolicityPackage D} {S : StableManifoldPackage H} (E : ErgodicityPackage S) (Ev : ErgodicityEvidence E) : ErgodicityClosed E := by
  exact And.intro Ev.ergodicDecompositionClosed (And.intro Ev.almostEverywhereAsymptoticClosed Ev.invariantMeasureDefinedClosed)

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse