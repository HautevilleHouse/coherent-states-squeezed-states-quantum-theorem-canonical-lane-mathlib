import canonicalLaneMathlib.AdmissibleClass
import CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean.CoherentStateGaussianLayer
import CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean.SqueezedStateOperatorLayer
import CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean.UncertaintyPrincipleLayer

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean

structure SqueezedStateReconstructionCertificate where
  gaussian : CoherentStateGaussianCertificate
  squeezedOp : SqueezedStateOperatorCertificate
  uncertainty : UncertaintyPrincipleCertificate
  gaussianClosed : CoherentStateGaussianClosed gaussian
  squeezedOpClosed : SqueezedStateOperatorClosed squeezedOp
  uncertaintyClosed : UncertaintyPrincipleClosed uncertainty

def sourceSqueezedStateReconstructionCertificate : SqueezedStateReconstructionCertificate := {
  gaussian := sourceCoherentStateGaussianCertificate
  squeezedOp := sourceSqueezedStateOperatorCertificate
  uncertainty := sourceUncertaintyPrincipleCertificate
  gaussianClosed := source_coherent_state_gaussian_closed
  squeezedOpClosed := source_squeezed_state_operator_closed
  uncertaintyClosed := source_uncertainty_principle_closed
}

def SqueezedStateReconstructionClosed (C : SqueezedStateReconstructionCertificate) : Prop :=
  CoherentStateGaussianClosed C.gaussian ∧
  SqueezedStateOperatorClosed C.squeezedOp ∧
  UncertaintyPrincipleClosed C.uncertainty

theorem source_squeezed_state_reconstruction_closed :
    SqueezedStateReconstructionClosed sourceSqueezedStateReconstructionCertificate := by
  exact And.intro sourceSqueezedStateReconstructionCertificate.gaussianClosed
    (And.intro sourceSqueezedStateReconstructionCertificate.squeezedOpClosed
      sourceSqueezedStateReconstructionCertificate.uncertaintyClosed)

end CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean
end HautevilleHouse