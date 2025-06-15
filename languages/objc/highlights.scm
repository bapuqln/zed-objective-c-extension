(preproc_import) @preprocessor.include
(preproc_call) @preprocessor.macro
(comment) @comment
(string_literal) @string
(char_literal) @string.character
(system_lib_string) @string.include

(public) @keyword.visibility
(private) @keyword.visibility
(protected) @keyword.visibility

"@interface" @keyword
"@implementation" @keyword
"@protocol" @keyword
"@end" @keyword
"@class" @keyword
"@property" @keyword
"@synthesize" @keyword
"@dynamic" @keyword
"@selector" @keyword
"@autoreleasepool" @keyword
"@import" @keyword

"if" @keyword.control
"else" @keyword.control
"for" @keyword.control
"while" @keyword.control
"do" @keyword.control
"switch" @keyword.control
"case" @keyword.control
"default" @keyword.control
"break" @keyword.control
"continue" @keyword.control
"return" @keyword.control
"goto" @keyword.control

"typedef" @keyword.storage
"enum" @keyword.storage
"struct" @keyword.storage
"union" @keyword.storage
"const" @keyword.storage
"volatile" @keyword.storage
"static" @keyword.storage
"extern" @keyword.storage
"inline" @keyword.storage
"restrict" @keyword.storage
"_Atomic" @keyword.storage
"_Bool" @keyword.storage
"_Complex" @keyword.storage
"_Imaginary" @keyword.storage
"auto" @keyword.storage
"register" @keyword.storage

(primitive_type) @type.primitive
(type_identifier) @type
(null) @constant.nil
(true) @constant.boolean
(false) @constant.boolean
(self) @keyword.language
(super) @keyword.language
(number_literal) @constant.numeric

(identifier) @variable
(field_identifier) @variable.member
(function_declarator declarator: (identifier) @function)
(declaration type: (type_identifier) @type declarator: (identifier) @variable)

(message_expression
  receiver: (_) @variable.object
  selector: (identifier) @function.method)

(message_expression
  receiver: (_) @variable.object
  selector: (keyword_argument_list
              (keyword_argument
                keyword: (identifier) @function.method)))

(message_expression
  receiver: (super)
  selector: (identifier) @function.method)

(message_expression
  receiver: (super)
  selector: (keyword_argument_list
              (keyword_argument
                keyword: (identifier) @function.method)))

(call_expression function: (identifier) @function)

(labeled_statement label: (statement_identifier) @label)

;; Punctuation
"." @punctuation.delimiter
"," @punctuation.delimiter
";" @punctuation.delimiter
":" @punctuation.delimiter
"(" @punctuation.delimiter
")" @punctuation.delimiter
"[" @punctuation.delimiter
"]" @punctuation.delimiter
"{" @punctuation.delimiter
"}" @punctuation.delimiter

"+" @operator
"-" @operator
"*" @operator
"/" @operator
"%" @operator
"++" @operator
"--" @operator
"=" @operator
"+=" @operator
"-=" @operator
"*=" @operator
"/=" @operator
"%=" @operator
"<<" @operator
">>" @operator
"&" @operator
"|" @operator
"^" @operator
"~" @operator
"!" @operator
"&&" @operator
"||" @operator
"?" @operator
"==" @operator
"!=" @operator
"<" @operator
"<=" @operator
">" @operator
">=" @operator
