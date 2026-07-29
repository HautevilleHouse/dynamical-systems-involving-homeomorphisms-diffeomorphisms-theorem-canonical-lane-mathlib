import DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean.Hyperbolicity

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure StableManifoldPackage {D : DiffeomorphismPackage} {H : HyperbolicityPackage D} where
  stableManifoldExists : Prop
  tangentSubspace : Prop
  smoothImmersedSubmanifold : Prop
  contractionRate : Prop
  stableManifoldExistsTerm : stableManifoldExists
  tangentSubspaceTerm : tangentSubspace
  smoothImmersedSubmanifoldTerm : smoothImmersedSubmanifold
  contractionRateTerm : contractionRate

structure StableManifoldEvidence {D : DiffeomorphismPackage} {H : HyperbolicityPackage D} (S : StableManifoldPackage H) where
  stableManifoldExistsClosed : S.stableManifoldExists
  tangentSubspaceClosed : S.tangentSubspace
  smoothImmersedSubmanifoldClosed : S.smoothImmersedSubmanifold
  contractionRateClosed : S.contractionRate

def StableManifoldClosed {D : DiffeomorphismPackage} {H : HyperbolicityPackage D} (S : StableManifoldPackage H) : Prop :=
  S.stableManifoldExists ∧ S.tangentSubspace ∧ S.smoothImmersedSubmanifold ∧ S.contractionRate

theorem stable_manifold_closed_from_evidence {D : DiffeomorphismPackage} {H : HyperbolicityPackage D} (S : StableManifoldPackage H) (E : StableManifoldEvidence S) : StableManifoldClosed S := by
  exact And.intro E.stableManifoldExistsClosed (And.intro E.tangentSubspaceClosed (And.intro E.smoothImmersedSubmanifoldClosed E.contractionRateClosed))

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse