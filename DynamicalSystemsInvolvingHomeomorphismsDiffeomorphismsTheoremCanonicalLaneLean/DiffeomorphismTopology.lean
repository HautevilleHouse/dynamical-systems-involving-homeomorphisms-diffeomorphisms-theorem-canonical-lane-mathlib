import DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean.DynamicalSystemsAdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure DiffeomorphismPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  diffeomorphism : manifold ≃ manifold
  derivativeBounded : Prop
  invertibility : Prop
  smoothness : Prop
  derivativeBoundedTerm : derivativeBounded
  invertibilityTerm : invertibility
  smoothnessTerm : smoothness

structure DiffeomorphismEvidence (D : DiffeomorphismPackage) where
  derivativeBoundedClosed : D.derivativeBounded
  invertibilityClosed : D.invertibility
  smoothnessClosed : D.smoothness

def DiffeomorphismClosed (D : DiffeomorphismPackage) : Prop :=
  D.derivativeBounded ∧ D.invertibility ∧ D.smoothness

theorem diffeomorphism_closed_from_evidence (D : DiffeomorphismPackage) (E : DiffeomorphismEvidence D) : DiffeomorphismClosed D := by
  exact And.intro E.derivativeBoundedClosed (And.intro E.invertibilityClosed E.smoothnessClosed)

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse