;; tags.scm - Symbol definitions and references for Objective-C

;; Class interfaces
(class_interface
  (identifier) @name) @definition.class

;; Class implementations
(class_implementation
  (identifier) @name) @definition.class

;; Protocol declarations
(protocol_declaration
  (identifier) @name) @definition.interface

;; Category interfaces
(category_interface
  (identifier) @name) @definition.class

;; Category implementations
(category_implementation
  (identifier) @name) @definition.class

;; Method definitions
(method_definition
  (method_selector
    (identifier) @name)) @definition.method

;; Function definitions
(function_definition
  (function_declarator
    (identifier) @name)) @definition.function

;; Property declarations
(property_declaration
  (identifier) @name) @definition.property

;; Variable declarations
(declaration
  (identifier) @name) @definition.variable

;; Method calls
(message_expression
  (identifier) @name) @reference.call

;; Function calls
(call_expression
  (identifier) @name) @reference.call

;; Type references
(type_identifier) @name @reference.type

;; Identifier references
(identifier) @name @reference
