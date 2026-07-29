import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure HyperbolicSet where
  manifold : Type u
  dynamics : manifold → manifold
  hyperbolicStructure : Prop
  splittingExists : Prop
  contractionExpansion : Prop
  hyperbolicStructureTerm : hyperbolicStructure
  splittingExistsTerm : splittingExists
  contractionExpansionTerm : contractionExpansion

def HyperbolicSetClosed (H : HyperbolicSet) : Prop :=
  H.hyperbolicStructure ∧ H.splittingExists ∧ H.contractionExpansion

theorem hyperbolic_set_closed (H : HyperbolicSet) :
    HyperbolicSetClosed H := by
  exact And.intro H.hyperbolicStructureTerm (And.intro H.splittingExistsTerm H.contractionExpansionTerm)

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse