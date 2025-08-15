
;; Objective-C language injections

;; C preprocessor directives
((preproc_include
  path: (string_literal) @injection.content)
 (#set! injection.language "c"))

;; String literals that might contain other languages
((string_literal) @injection.content
 (#match? @injection.content "^\".*\.(js|html|css|sql).*\"$")
 (#set! injection.language "javascript"))

;; Documentation comments
((comment) @injection.content
 (#match? @injection.content "^/\*\*")
 (#set! injection.language "markdown"))