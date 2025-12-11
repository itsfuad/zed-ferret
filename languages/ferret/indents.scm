; Indentation rules for Ferret language

; Indent blocks
[
  (block)
  (type_declaration)
  (function_declaration)
  (if_statement)
  (while_statement)
  (for_statement)
  (composite_literal)
  (match_expression)
] @indent

; Dedent closing braces
[
  "}"
  "]"
  ")"
] @outdent

; Function bodies
(function_declaration
  body: (block) @indent)

; If statement bodies
(if_statement
  consequence: (block) @indent)

(if_statement
  alternative: (block) @indent)

; While statement bodies
(while_statement
  body: (block) @indent)

; For statement bodies
(for_statement
  body: (block) @indent)

; Block expressions
(block
  "}" @end) @indent
