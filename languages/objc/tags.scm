;; tags.scm

;; Class interfaces
((class_interface
  (identifier) @name)) @definition.class

;; Class implementations
((class_implementation
  (identifier) @name)) @definition.class

;; Protocol declarations
((protocol_declaration
  (identifier) @name)) @definition.interface

;; Method definitions
((method_definition
  (identifier) @name)) @definition.method

;; Property declarations - commented out since it's causing errors
;; ((property_declaration
;;   (identifier) @name)) @definition.property

;; Function definitions
((function_definition
  declarator: (function_declarator
    declarator: (identifier) @name))) @definition.function

;; Method calls
((message_expression
  (identifier) @name)) @reference.call

;; Function calls
((call_expression
  function: (identifier) @name)) @reference.call
