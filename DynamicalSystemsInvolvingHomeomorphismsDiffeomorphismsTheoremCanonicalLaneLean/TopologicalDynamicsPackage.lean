import DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean.SmoothStructurePackage

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure TopologicalDynamicsPackage (O : DynamicalAdmittedObject) where
  homeomorphismGroupActing : Prop
  invariantSets : Prop
  orbitStructure : Prop
  recurrenceProperties : Prop

structure TopologicalDynamicsEvidence (O : DynamicalAdmittedObject) (D : TopologicalDynamicsPackage O) where
  homeomorphismGroupActingClosed : D.homeomorphismGroupActing
  invariantSetsClosed : D.invariantSets
  orbitStructureClosed : D.orbitStructure
  recurrencePropertiesClosed : D.recurrenceProperties

def TopologicalDynamicsClosed (O : DynamicalAdmittedObject) (D : TopologicalDynamicsPackage O) : Prop :=
  D.homeomorphismGroupActing ∧ D.invariantSets ∧ D.orbitStructure ∧ D.recurrenceProperties

theorem topological_dynamics_closed_from_evidence (O : DynamicalAdmittedObject) (D : TopologicalDynamicsPackage O) (E : TopologicalDynamicsEvidence O D) : TopologicalDynamicsClosed O D := by
  exact And.intro E.homeomorphismGroupActingClosed (And.intro E.invariantSetsClosed (And.intro E.orbitStructureClosed E.recurrencePropertiesClosed))

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse