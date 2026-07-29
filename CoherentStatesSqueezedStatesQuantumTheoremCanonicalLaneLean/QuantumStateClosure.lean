import CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean.UncertaintyPrincipleLayer
import CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean

def coherentSqueezedAdmittedObject : AdmittedTheoremObject := {
  object := theoremSpecificObject
  localWitness := "Coherent and squeezed states with uncertainty principle closure"
  bridgeEvidence := "source-derived certificate fields"
  sourceKeyChecked := rfl
  theoremObjectChecked := rfl
}

def coherentSqueezedAdmissibleClass : AdmissibleClass := {
  object := coherentSqueezedAdmittedObject
  endpointSatisfied := UncertaintyPrincipleLayerClosed sourceUncertaintyPrincipleCertificate
  remainderRecorded := mathlibProofObligation.unrestrictedClassicalClosureNative = false
  gateWitness := Or.inl source_uncertainty_principle_layer_closed
}

def QuantumStateAdmittedClosure : Prop :=
  UncertaintyPrincipleLayerClosed sourceUncertaintyPrincipleCertificate ∧
  ConstrainedCoherentSqueezedClosure coherentSqueezedAdmissibleClass

theorem quantum_state_admitted_closure_checked :
    QuantumStateAdmittedClosure := by
  exact And.intro source_uncertainty_principle_layer_closed
    (constrained_coherent_squeezed_endgame coherentSqueezedAdmissibleClass)

end CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean
end HautevilleHouse
