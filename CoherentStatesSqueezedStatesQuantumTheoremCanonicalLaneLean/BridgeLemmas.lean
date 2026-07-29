import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.sourceKeyChecked ∧ A.object.theoremObjectChecked

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.sourceKeyChecked A.object.theoremObjectChecked
end CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean
end HautevilleHouse
