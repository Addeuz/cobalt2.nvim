;; extends

; Svelte runes: $state(), $derived(), $effect(), $props(), $state.raw(), $effect.pre() ...
((call_expression
  function: (identifier) @function.builtin.rune)
  (#any-of? @function.builtin.rune "$state" "$derived" "$effect" "$props" "$bindable" "$inspect" "$host"))

((call_expression
  function: (member_expression
    object: (identifier) @function.builtin.rune))
  (#any-of? @function.builtin.rune "$state" "$derived" "$effect" "$props" "$bindable" "$inspect" "$host"))
