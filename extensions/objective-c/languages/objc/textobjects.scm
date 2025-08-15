
;; Objective-C text objects

;; Functions
((function_definition) @function.outer)
((function_definition
  body: (compound_statement) @function.inner))

;; Classes
((class_interface) @class.outer)
((class_implementation) @class.outer)
((class_interface
  (_) @class.inner))
((class_implementation
  (_) @class.inner))

;; Methods
((method_definition) @function.outer)
((method_definition
  body: (compound_statement) @function.inner))

;; Parameters
((parameter_declaration) @parameter.outer)

;; Comments
((comment) @comment.outer)

;; Statements
((expression_statement) @statement.outer)
((if_statement) @statement.outer)
((while_statement) @statement.outer)
((for_statement) @statement.outer)
((return_statement) @statement.outer)

;; Blocks
((compound_statement) @block.outer)
((compound_statement
  "{" . (_)* @block.inner . "}"))

;; Conditionals
((if_statement
  condition: (_) @conditional.inner))
((if_statement) @conditional.outer)

;; Loops
((for_statement) @loop.outer)
((while_statement) @loop.outer)
((for_statement
  (_) @loop.inner))
((while_statement
  body: (_) @loop.inner))