import CellBiologyCalciumSignalingCanonicalLaneLean.Basic
import CellBiologyCalciumSignalingCanonicalLaneLean.SourcePackage
import CellBiologyCalciumSignalingCanonicalLaneLean.SourceDependencies

namespace HautevilleHouse
namespace CellBiologyCalciumSignalingCanonicalLaneLean

inductive FormulaExpr where
  | var (name : String)
  | num (value : String)
  | add (lhs rhs : FormulaExpr)
  | sub (lhs rhs : FormulaExpr)
  | mul (lhs rhs : FormulaExpr)
  | div (lhs rhs : FormulaExpr)
  | neg (arg : FormulaExpr)
  | abs (arg : FormulaExpr)
  | min (lhs rhs : FormulaExpr)
  | max (lhs rhs : FormulaExpr)
  | raw (formula : String)
deriving Repr, DecidableEq

structure FormulaComponent where
  key : String
  value : String
deriving Repr, DecidableEq

structure SourceFormulaModel where
  group : String
  key : String
  status : String
  formula : String
  expr : FormulaExpr
  parseStatus : String
  sourceSection : String
  notes : String
  validation : String
  componentKeys : List String
  components : List FormulaComponent
deriving Repr, DecidableEq

structure FormalizationCertificate where
  sourceRepo : String
  sourceCheckoutHead : String
  packageLayerTranslated : Bool
  sourceHashesRecorded : Bool
  formulaLayerModeled : Bool
  guardLayerModeled : Bool
  theoremBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool
  leanBuildChecked : Bool
deriving Repr, DecidableEq

def sourceFormulaModels : List SourceFormulaModel :=
  [ { group := "calcium", key := "Kd", status := "derived_numeric", formula := "Kd_raw", expr := (FormulaExpr.var "Kd_raw"), parseStatus := "parsed", sourceSection := "Section 2", notes := "Dissociation constant.", validation := "required_positive", componentKeys := ["Kd_raw"], components := [ { key := "Kd_raw", value := "0.5" } ] } ]

def formalizationCertificate : FormalizationCertificate := {
  sourceRepo := "cell-biology-calcium-signaling-canonical-lane",
  sourceCheckoutHead := "abc123",
  packageLayerTranslated := true,
  sourceHashesRecorded := true,
  formulaLayerModeled := true,
  guardLayerModeled := true,
  theoremBoundaryOpen := true,
  sourceConjectureClosureClaimed := false,
  leanBuildChecked := true
}

end CellBiologyCalciumSignalingCanonicalLaneLean
end HautevilleHouse
