;; Basic indentation rules for Objective-C

;; Indent after opening braces
(compound_statement) @indent

;; Indent for method definitions
(method_definition
  (#set! indent.basis "parent_indent"))

;; Indent for interface/implementation blocks
(class_interface
  (#set! indent.basis "parent_indent"))
(class_implementation
  (#set! indent.basis "parent_indent"))

;; Add more specific rules as needed based on the grammar