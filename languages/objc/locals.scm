;; 这是 locals.scm 文件的正确开头示例
;; 可以有注释

;; 类接口
((class_interface
  (identifier) @name.class))

;; 类别接口
((class_interface
  (identifier) @name.class
  category: (identifier) @name.category))

;; 协议声明
((protocol_declaration
  (identifier) @name.protocol))

;; 函数定义
((function_definition
  declarator: (function_declarator
    declarator: (identifier) @name.function)))

;; 方法定义
((method_definition
  (identifier) @name.method))

;; 类别接口和实现
((class_interface
  (identifier) @class.name
  category: (identifier) @category.name.outline))

((class_implementation
  (identifier) @class.name
  category: (identifier) @some.other.capture))
