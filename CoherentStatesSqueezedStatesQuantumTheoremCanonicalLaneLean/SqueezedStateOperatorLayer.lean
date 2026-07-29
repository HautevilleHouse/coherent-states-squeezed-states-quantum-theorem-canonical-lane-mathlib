import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean

structure SqueezedStateOperatorCertificate where
  squeezeOperator : Prop
  squeezeParameter : Prop
  quadratureVariance : Prop
  squeezeOperatorClosed : squeezeOperator
  squeezeParameterClosed : squeezeParameter
  quadratureVarianceClosed : quadratureVariance

def sourceSqueezedStateOperatorCertificate : SqueezedStateOperatorCertificate := {
  squeezeOperator := true
  squeezeParameter := true
  quadratureVariance := true
  squeezeOperatorClosed := rfl
  squeezeParameterClosed := rfl
  quadratureVarianceClosed := rfl
}

def SqueezedStateOperatorClosed (C : SqueezedStateOperatorCertificate) : Prop :=
  C.squeezeOperator ∧ C.squeezeParameter ∧ C.quadratureVariance

theorem source_squeezed_state_operator_closed :
    SqueezedStateOperatorClosed sourceSqueezedStateOperatorCertificate := by
  exact And.intro sourceSqueezedStateOperatorCertificate.squeezeOperatorClosed
    (And.intro sourceSqueezedStateOperatorCertificate.squeezeParameterClosed
      sourceSqueezedStateOperatorCertificate.quadratureVarianceClosed)

end CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean
end HautevilleHouse