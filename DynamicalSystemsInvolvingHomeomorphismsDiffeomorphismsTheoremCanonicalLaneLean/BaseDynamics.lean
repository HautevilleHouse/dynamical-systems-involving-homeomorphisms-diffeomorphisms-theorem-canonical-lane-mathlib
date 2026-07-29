import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure HomeoDiffeoAdmittedObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  manifold : Type v
  manifoldTopology : TopologicalSpace manifold
  manifoldSmooth : ContDiff ⊤ (fun x : manifold => x)
  homeomorphism : carrier ≃ₜ manifold
  diffeomorphism : manifold ≃ₜ carrier
  conclusion : homeomorphism.toFun = diffeomorphism.invFun ∧ diffeomorphism.toFun = homeomorphism.invFun

def HomeoDiffeoWitnessClosed (O : HomeoDiffeoAdmittedObject) : Prop :=
  O.conclusion

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse