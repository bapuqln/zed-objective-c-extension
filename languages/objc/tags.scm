tags.scm

;; Class interfaces
(class_interface
  name: (identifier) @name) @definition.class

;; Class implementations
(class_implementation
  name: (identifier) @name) @definition.class

;; Protocol declarations
(protocol_declaration
  name: (identifier) @name) @definition.interface

;; Method definitions
(method_definition
  selector: (identifier) @name) @definition.method

(method_definition
  selector: (keyword_selector) @name) @definition.method

;; Property declarations
(property_declaration
  name: (identifier) @name) @definition.property

;; Function definitions
(function_definition
  declarator: (function_declarator
    declarator: (identifier) @name)) @definition.function

;; Method calls
(message_expression
  selector: (identifier) @name) @reference.call

(message_expression
  selector: (keyword_selector) @name) @reference.call

;; Function calls
(call_expression
  function: (identifier) @name) @reference.call