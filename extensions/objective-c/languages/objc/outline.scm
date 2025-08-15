;; Outline rules for Objective-C

;; Class interfaces
(class_interface
  (identifier) @name) @class

;; Class implementations
(class_implementation
  (identifier) @name) @class

;; Protocol declarations
(protocol_declaration
  (identifier) @name) @protocol

;; Category interfaces
(category_interface
  (identifier) @name) @category

;; Category implementations
(category_implementation
  (identifier) @name) @category

;; Method definitions
(method_definition
  (method_selector
    (identifier) @name)) @method

;; Function definitions
(function_definition
  (function_declarator
    (identifier) @name)) @function

;; Property declarations
(property_declaration
  (identifier) @name) @property
