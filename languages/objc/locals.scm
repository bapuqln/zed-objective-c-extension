;; 这是 locals.scm 文件的正确开头示例
;; 可以有注释

(class_interface
  name: (identifier) @name.class)

(category_interface
  class_name: (identifier) @name.class
  name: (identifier) @name.category) ; 注意这里使用 name:

(protocol_declaration
  name: (identifier) @name.protocol)

(function_definition
  declarator: (function_declarator
    declarator: (identifier) @name.function))

(method_definition
  selector: [
    (identifier) @name.method
    (keyword_selector (keyword_argument keyword: (identifier)) @name.method)
  ])

; 确保所有相关的查询都在这里，并且使用正确的字段名
; 如果您的第 17 行（在清除了无效内容之后）仍然有问题：
; (some_node_type ... category_name: (identifier) @capture) ; 错误行示例
; 将其改为：
; (some_node_type ... name: (identifier) @capture) ; 正确行示例

; 您提供的有效 S-表达式部分：
(category_interface class_name: (_) name: (identifier) @category.name.outline)
(category_implementation class_name: (_) name: (identifier) @some.other.capture)

; Line 17 - after change:
(some_node_for_category random_field: (...) name: (identifier) @some.capture)
