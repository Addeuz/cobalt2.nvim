;; extends

; Cobalt2 colors return type annotations (including the colon) pink and italic
(function_declaration
  return_type: (_) @type.return
  (#set! priority 125))

(arrow_function
  return_type: (_) @type.return
  (#set! priority 125))

(method_definition
  return_type: (_) @type.return
  (#set! priority 125))
