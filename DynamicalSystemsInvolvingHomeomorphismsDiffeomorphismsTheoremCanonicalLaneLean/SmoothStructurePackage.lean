import DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean.HomeomorphismDiffeomorphismObjects

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure SmoothStructurePackage (O : DynamicalAdmittedObject) where
  atlas : O.space.carrier → Type
  chartCompatibility : Prop
  smoothTransitionFunctions : Prop
  diffeomorphismToRn : Prop

structure SmoothStructureEvidence (O : DynamicalAdmittedObject) (P : SmoothStructurePackage O) where
  atlasClosed : P.chartCompatibility
  smoothTransitionFunctionsClosed : P.smoothTransitionFunctions
  diffeomorphismToRnClosed : P.diffeomorphismToRn

def SmoothStructureClosed (O : DynamicalAdmittedObject) (P : SmoothStructurePackage O) : Prop :=
  P.chartCompatibility ∧ P.smoothTransitionFunctions ∧ P.diffeomorphismToRn

theorem smooth_structure_closed_from_evidence (O : DynamicalAdmittedObject) (P : SmoothStructurePackage O) (E : SmoothStructureEvidence O P) : SmoothStructureClosed O P := by
  exact And.intro E.atlasClosed (And.intro E.smoothTransitionFunctionsClosed E.diffeomorphismToRnClosed)

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse