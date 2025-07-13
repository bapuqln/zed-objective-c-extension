;; Outline rules for Objective-C

((class_interface
  (identifier) @name)) @class

((class_implementation
  (identifier) @name)) @class

((protocol_declaration
  (identifier) @name)) @protocol

((class_interface
  (identifier) @class_name
  category: (identifier) @category_name)) @category

((method_definition
  (method_type)? @type
  (identifier) @name)) @method

((function_definition
  declarator: (function_declarator
    declarator: (identifier) @name))) @function

;; Add more specific rules as needed based on the grammar
