import CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean.FinalTheorem
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String
deriving Repr, DecidableEq

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := sourceRepository,
  theoremObject := sourceDescription,
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "Coherent/Squeezed states closure over admitted class; unrestricted classical closure carried"
}

end CoherentStatesSqueezedStatesQuantumTheoremCanonicalLaneLean
end HautevilleHouse
