;; Local scoping rules for Objective-C

;; Class interface declarations
(class_interface
  (identifier) @local.definition.class)

;; Class implementation declarations
(class_implementation
  (identifier) @local.definition.class)

;; Protocol declarations
(protocol_declaration
  (identifier) @local.definition.protocol)

;; Category interface declarations
(category_interface
  (identifier) @local.definition.category)

;; Category implementation declarations
(category_implementation
  (identifier) @local.definition.category)

;; Function definitions
(function_definition
  (function_declarator
    (identifier) @local.definition.function))

;; Method definitions
(method_definition
  (method_selector
    (identifier) @local.definition.method))

;; Variable declarations
(declaration
  (identifier) @local.definition.variable)

;; Parameter declarations
(parameter_declaration
  (identifier) @local.definition.parameter)

;; Property declarations
(property_declaration
  (identifier) @local.definition.property)

;; Local variable scope
(compound_statement) @local.scope

;; Function scope
(function_definition) @local.scope

;; Method scope
(method_definition) @local.scope

;; Class scope
(class_interface) @local.scope
(class_implementation) @local.scope

;; Protocol scope
(protocol_declaration) @local.scope

;; Category scope
(category_interface) @local.scope
(category_implementation) @local.scope
