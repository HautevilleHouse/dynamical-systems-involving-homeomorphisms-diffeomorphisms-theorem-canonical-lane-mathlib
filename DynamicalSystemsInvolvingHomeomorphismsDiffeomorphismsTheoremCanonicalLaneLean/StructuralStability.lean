import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure StructuralStability where
  dynamicalSystem : Type u
  perturbation : dynamicalSystem → dynamicalSystem
  topologicalConjugacy : Prop
  perturbationSmall : Prop
  conjugacyExists : Prop
  topologicalConjugacyTerm : topologicalConjugacy
  perturbationSmallTerm : perturbationSmall
  conjugacyExistsTerm : conjugacyExists

def StructuralStabilityClosed (S : StructuralStability) : Prop :=
  S.topologicalConjugacy ∧ S.perturbationSmall ∧ S.conjugacyExists

theorem structural_stability_closed (S : StructuralStability) :
    StructuralStabilityClosed S := by
  exact And.intro S.topologicalConjugacyTerm (And.intro S.perturbationSmallTerm S.conjugacyExistsTerm)

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse