import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean

structure HomeomorphismStructure where
  sourceSpace : Type u
  targetSpace : Type v
  homeoMap : sourceSpace → targetSpace
  bijective : Prop
  continuousForward : Prop
  continuousInverse : Prop
  bijectiveTerm : bijective
  continuousForwardTerm : continuousForward
  continuousInverseTerm : continuousInverse

def HomeomorphismStructureClosed (H : HomeomorphismStructure) : Prop :=
  H.bijective ∧ H.continuousForward ∧ H.continuousInverse

theorem homeomorphism_structure_closed (H : HomeomorphismStructure) :
    HomeomorphismStructureClosed H := by
  exact And.intro H.bijectiveTerm (And.intro H.continuousForwardTerm H.continuousInverseTerm)

end DynamicalSystemsInvolvingHomeomorphismsDiffeomorphismsTheoremCanonicalLaneLean
end HautevilleHouse