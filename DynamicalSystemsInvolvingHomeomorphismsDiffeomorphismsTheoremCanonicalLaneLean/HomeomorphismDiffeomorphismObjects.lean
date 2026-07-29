import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure DynamicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicalAdmittedObject where
  space : DynamicalSpace
  compactManifoldWithoutBoundary : Prop
  homeomorphismAction : Prop
  diffeomorphismAction : Prop
  smoothStructureExists : Prop
  conclusion : smoothStructureExists

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.smoothStructureExists

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse