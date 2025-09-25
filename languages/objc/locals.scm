;; Locals.scm for Objective-C
;; Defines local scope bindings for variables, methods, classes, etc.

;; Class definitions
(class_interface
  name: (identifier) @name.definition.class) @scope

(class_implementation
  name: (identifier) @name.definition.class) @scope

;; Category definitions
(category_interface
  class_name: (identifier) @name.reference.class
  name: (identifier) @name.definition.category) @scope

(category_implementation
  class_name: (identifier) @name.reference.class
  name: (identifier) @name.definition.category) @scope

;; Protocol definitions
(protocol_declaration
  name: (identifier) @name.definition.protocol) @scope

;; Method definitions
(method_definition
  selector: (identifier) @name.definition.method) @scope

(method_definition
  selector: (keyword_selector) @name.definition.method) @scope

;; Function definitions
(function_definition
  declarator: (function_declarator
    declarator: (identifier) @name.definition.function)) @scope

;; Variable declarations
(declaration
  declarator: (identifier) @name.definition.variable)

(declaration
  declarator: (init_declarator
    declarator: (identifier) @name.definition.variable))

;; Parameter declarations
(parameter_declaration
  declarator: (identifier) @name.definition.parameter)

(parameter_declaration
  declarator: (pointer_declarator
    declarator: (identifier) @name.definition.parameter))

;; Property declarations
(property_declaration
  declarator: (identifier) @name.definition.property)

;; Block scopes
(compound_statement) @scope

;; Control flow scopes
(if_statement) @scope
(for_statement) @scope
(while_statement) @scope
(do_statement) @scope
(switch_statement) @scope

;; Variable references
(identifier) @name.reference
