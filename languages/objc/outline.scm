;; Outline rules for Objective-C

(class_interface
 name: (identifier) @name) @class

(class_implementation
 name: (identifier) @name) @class

(protocol_declaration
 name: (identifier) @name) @protocol

(category_interface
 name: (identifier) @class_name
 category: (identifier) @category_name) @category

(method_definition
 return_type: (_)? @type
 selector: (identifier) @name) @method

(method_definition
 return_type: (_)? @type
 selector: (keyword_selector) @name) @method

(function_definition
 declarator: (function_declarator
               declarator: (identifier) @name)) @function

;; Add more specific rules as needed based on the grammar
