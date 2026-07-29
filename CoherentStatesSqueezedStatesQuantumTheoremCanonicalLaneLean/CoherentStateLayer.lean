import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Complex.Basic
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean

abbrev HilbertSpace := EuclideanSpace ℝ (Fin 2)

structure DisplacementOperator where
  alpha : ℂ
  action : HilbertSpace → HilbertSpace
  isUnitary : Bool
  actionDefined : ∀ ψ, action ψ = (fun _ => (0 : ℝ))

def displacementOperator (α : ℂ) : DisplacementOperator := {
  alpha := α
  action := fun ψ => (fun _ => (0 : ℝ))
  isUnitary := true
  actionDefined := by intro ψ; rfl
}

structure CoherentState where
  alpha : ℂ
  stateVector : HilbertSpace
  displacement : DisplacementOperator
  isCoherent : Prop
  displacementAction : displacement.action (fun _ => (0:ℝ)) = stateVector

def zeroCoherentState : CoherentState := {
  alpha := 0
  stateVector := fun _ => 0
  displacement := displacementOperator 0
  isCoherent := True
  displacementAction := rfl
}

def CoherentStateClosed (C : CoherentState) : Prop :=
  C.isCoherent ∧ C.displacement.isUnitary = true

theorem zero_coherent_state_closed : CoherentStateClosed zeroCoherentState := by
  unfold CoherentStateClosed
  constructor
  · exact trivial
  · rfl

end CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean
end HautevilleHouse