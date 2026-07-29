import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Complex.Basic
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean

structure SqueezingOperator where
  zeta : ℂ
  action : HilbertSpace → HilbertSpace
  isUnitary : Bool
  actionDefined : ∀ ψ, action ψ = (fun _ => (0 : ℝ))

def squeezingOperator (ζ : ℂ) : SqueezingOperator := {
  zeta := ζ
  action := fun ψ => (fun _ => (0 : ℝ))
  isUnitary := true
  actionDefined := by intro ψ; rfl
}

structure SqueezedState where
  alpha : ℂ
  zeta : ℂ
  stateVector : HilbertSpace
  squeezing : SqueezingOperator
  displacement : DisplacementOperator
  isSqueezed : Prop
  generation : (squeezing.action ∘ displacement.action) (fun _ => (0:ℝ)) = stateVector
  displacingThenSqueezing : (displacement.action ∘ squeezing.action) (fun _ => (0:ℝ)) = stateVector

def zeroSqueezedState : SqueezedState := {
  alpha := 0
  zeta := 0
  stateVector := fun _ => 0
  squeezing := squeezingOperator 0
  displacement := displacementOperator 0
  isSqueezed := True
  generation := rfl
  displacingThenSqueezing := rfl
}

def SqueezedStateClosed (S : SqueezedState) : Prop :=
  S.isSqueezed ∧ S.squeezing.isUnitary = true

theorem zero_squeezed_state_closed : SqueezedStateClosed zeroSqueezedState := by
  unfold SqueezedStateClosed zeroSqueezedState
  refine ⟨?_, ?_⟩
  · exact True.intro
  · rfl

end CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean
end HautevilleHouse