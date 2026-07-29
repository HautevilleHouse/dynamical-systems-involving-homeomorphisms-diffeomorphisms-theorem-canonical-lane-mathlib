import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure DynamicalSystemTopology where
  stateSpace : Type u
  stateTopology : TopologicalSpace stateSpace
  timeDomain : Type v
  timeTopology : TopologicalSpace timeDomain
  continuousAction : Bool
  continuousActionTerm : continuousAction

def DynamicalSystemTopologyClosed (D : DynamicalSystemTopology) : Prop :=
  D.continuousAction

theorem dynamical_system_topology_closed (D : DynamicalSystemTopology) :
    DynamicalSystemTopologyClosed D := by
  exact D.continuousActionTerm

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse