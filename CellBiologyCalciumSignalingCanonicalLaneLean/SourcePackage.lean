import Mathlib

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool
deriving Repr, DecidableEq

structure SourceFunctionDecl where
  file : String
  name : String
  args : List String
  returns : String
  doc : String
  line : Nat
  isAsync : Bool
deriving Repr, DecidableEq

structure SourceClassDecl where
  file : String
  name : String
  bases : List String
  doc : String
  line : Nat
deriving Repr, DecidableEq

structure SourceAssignmentDecl where
  file : String
  name : String
  value : String
  line : Nat
deriving Repr, DecidableEq

structure ConstantSpec where
  group : String
  key : String
  status : String
  formula : String
  sourceSection : String
  validation : String
  componentKeys : List String
deriving Repr, DecidableEq

structure RegistryConstant where
  key : String
  value : String
  theoremLevel : Bool
  status : String
  source : String
  sourceSection : String
deriving Repr, DecidableEq

def sourceCheckoutHead : String := "abc123"
def sourceCheckoutClean : Bool := true

def sourceFiles : List SourceFile :=
  [ { path := "scripts/extract_constants.py", sha256 := "aaa", functionCount := 9, classCount := 0, assignmentCount := 7, parseOk := true } ]

def sourceFunctions : List SourceFunctionDecl :=
  [ { file := "scripts/extract_constants.py", name := "_resolve", args := ["path_str"], returns := "Path", doc := "", line := 29, isAsync := false } ]

def sourceClasses : List SourceClassDecl :=
  []

def sourceAssignments : List SourceAssignmentDecl :=
  [ { file := "scripts/extract_constants.py", name := "SCRIPT_DIR", value := "Path(__file__).resolve().parent", line := 14 } ]

def constantSpecs : List ConstantSpec :=
  [ { group := "calcium", key := "Kd", status := "derived_numeric", formula := "Kd_raw", sourceSection := "Section 2", validation := "required_positive", componentKeys := ["Kd_raw"] } ]

def registryConstants : List RegistryConstant :=
  [ { key := "Kd", value := "0.5", theoremLevel := true, status := "derived_numeric", source := "extracted", sourceSection := "Section 2" } ]

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse
