;; Objective-C runnable code blocks

;; Main function
(function_definition
  (function_declarator
    (identifier) @run
    (#eq? @run "main"))
  (#set! tag runnable)
  (#set! runnable.name "main")
  (#set! runnable.description "Run main function"))

;; Test functions (functions starting with "test")
(function_definition
  (function_declarator
    (identifier) @run
    (#match? @run "^test.*"))
  (#set! tag runnable)
  (#set! runnable.name "test")
  (#set! runnable.description "Run test function"))

;; Test methods (methods starting with "test")
(method_definition
  (method_selector
    (identifier) @run
    (#match? @run "^test.*"))
  (#set! tag runnable)
  (#set! runnable.name "test-method")
  (#set! runnable.description "Run test method"))
