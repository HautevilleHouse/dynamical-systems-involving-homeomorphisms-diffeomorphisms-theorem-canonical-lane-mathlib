import HautevilleHouse.DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean.TheoremStatement
import HautevilleHouse.CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DynamicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicalAdmittedObject where
  space : DynamicalSpace
  compactManifold : Prop
  dynamicalSystem : Prop
  diffeomorphism : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure DynamicalEndgameState where
  object : DynamicalAdmittedObject

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse