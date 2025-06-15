;; Objective-C runnable code blocks

;; Main function
((function_definition
  declarator: (function_declarator
    declarator: (identifier) @run
    (#eq? @run "main")))
  (#set! tag runnable)
  (#set! runnable.name "main")
  (#set! runnable.description "Run main function"))

;; Test functions (functions starting with "test")
((function_definition
  declarator: (function_declarator
    declarator: (identifier) @run
    (#match? @run "^test.*")))
  (#set! tag runnable)
  (#set! runnable.name "test")
  (#set! runnable.description "Run test function"))

;; Methods in test classes
((method_definition
  selector: (keyword_selector
    (keyword_declarator
      keyword: (identifier) @run
      (#match? @run "^test.*"))))
  (#set! tag runnable)
  (#set! runnable.name "test-method")
  (#set! runnable.description "Run test method"))