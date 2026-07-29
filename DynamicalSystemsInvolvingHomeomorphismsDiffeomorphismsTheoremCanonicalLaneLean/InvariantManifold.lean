import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure InvariantManifold where
  manifold : Type u
  dynamics : manifold → manifold
  invarianceCondition : Prop
  invarianceConditionTerm : invarianceCondition

def InvariantManifoldClosed (I : InvariantManifold) : Prop :=
  I.invarianceCondition

theorem invariant_manifold_closed (I : InvariantManifold) :
    InvariantManifoldClosed I := by
  exact I.invarianceConditionTerm

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse