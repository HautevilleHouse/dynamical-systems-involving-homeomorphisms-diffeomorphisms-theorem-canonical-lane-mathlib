import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure DiffeomorphismRegularity where
  sourceManifold : Type u
  targetManifold : Type v
  diffMap : sourceManifold → targetManifold
  smoothnessClass : Nat
  differentiableForward : Prop
  differentiableInverse : Prop
  differentiableForwardTerm : differentiableForward
  differentiableInverseTerm : differentiableInverse

def DiffeomorphismRegularityClosed (D : DiffeomorphismRegularity) : Prop :=
  D.differentiableForward ∧ D.differentiableInverse

theorem diffeomorphism_regularity_closed (D : DiffeomorphismRegularity) :
    DiffeomorphismRegularityClosed D := by
  exact And.intro D.differentiableForwardTerm D.differentiableInverseTerm

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse