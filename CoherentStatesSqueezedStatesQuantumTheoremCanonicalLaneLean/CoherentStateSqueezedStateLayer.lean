import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean

structure CoherentState where
  alpha : ℂ
  groundStateEnergy : ℝ
  spectralDecomposition : ℂ → ℂ
  energyShift : ℝ
  displacementOperatorInverse : ℂ → ℂ

def defaultCoherentState : CoherentState :=
  { alpha := 0
    groundStateEnergy := 0
    spectralDecomposition := id
    energyShift := 0
    displacementOperatorInverse := id }

structure SqueezedState where
  zeta : ℂ
  quadratureVar : ℝ → ℝ
  squeezingParameterAbs : ℝ
  spectralSqueezing : ℝ → ℝ
  squeezingOperatorInverse : ℝ → ℝ

def defaultSqueezedState : SqueezedState :=
  { zeta := 0
    quadratureVar := fun _ => 0
    squeezingParameterAbs := 0
    spectralSqueezing := id
    squeezingOperatorInverse := id }

structure QuantumFieldCertificate where
  coherentState : CoherentState
  squeezedState : SqueezedState
  heisenbergUncertaintyClosed : coherentState.energyShift ≥ 0 ∧ squeezingParameterAbs squeezedState ≥ 0
  coherentSpectralClosed : coherentState.spectralDecomposition = displacementOperatorCoherent coherentState.alpha
  squeezedSpectralClosed : squeezedState.spectralSqueezing = squeezingOperatorSqueezed squeezedState.zeta
end CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean
end HautevilleHouse
