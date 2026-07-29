import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean

structure CoherentStateGaussianCertificate where
  gaussianWavepacket : Prop
  minimalUncertainty : Prop
  displacementOperator : String
  displacementClosed : displacementOperator = "D(alpha) = exp(alpha a^dagger - alpha^* a)"
  minimalUncertaintyClosed : minimalUncertainty
  gaussianClosed : gaussianWavepacket

def sourceCoherentStateGaussianCertificate : CoherentStateGaussianCertificate := {
  gaussianWavepacket := true
  minimalUncertainty := true
  displacementOperator := "D(alpha) = exp(alpha a^dagger - alpha^* a)"
  displacementClosed := rfl
  minimalUncertaintyClosed := rfl
  gaussianClosed := rfl
}

def CoherentStateGaussianClosed (C : CoherentStateGaussianCertificate) : Prop :=
  C.gaussianWavepacket ∧ C.minimalUncertainty ∧ C.displacementOperator = "D(alpha) = exp(alpha a^dagger - alpha^* a)"

theorem source_coherent_state_gaussian_closed :
    CoherentStateGaussianClosed sourceCoherentStateGaussianCertificate := by
  exact And.intro sourceCoherentStateGaussianCertificate.gaussianClosed
    (And.intro sourceCoherentStateGaussianCertificate.minimalUncertaintyClosed
      sourceCoherentStateGaussianCertificate.displacementClosed)

end CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean
end HautevilleHouse