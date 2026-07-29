import DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean.DiffeomorphismTopology

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure HyperbolicityPackage {D : DiffeomorphismPackage} where
  tangentBundle : Type u
  decomposition : Prop
  contractionExpansion : Prop
  stableUnstableFoliation : Prop
  decompositionTerm : decomposition
  contractionExpansionTerm : contractionExpansion
  stableUnstableFoliationTerm : stableUnstableFoliation

structure HyperbolicityEvidence {D : DiffeomorphismPackage} (H : HyperbolicityPackage D) where
  decompositionClosed : H.decomposition
  contractionExpansionClosed : H.contractionExpansion
  stableUnstableFoliationClosed : H.stableUnstableFoliation

def HyperbolicityClosed {D : DiffeomorphismPackage} (H : HyperbolicityPackage D) : Prop :=
  H.decomposition ∧ H.contractionExpansion ∧ H.stableUnstableFoliation

theorem hyperbolicity_closed_from_evidence {D : DiffeomorphismPackage} (H : HyperbolicityPackage D) (E : HyperbolicityEvidence H) : HyperbolicityClosed H := by
  exact And.intro E.decompositionClosed (And.intro E.contractionExpansionClosed E.stableUnstableFoliationClosed)

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse