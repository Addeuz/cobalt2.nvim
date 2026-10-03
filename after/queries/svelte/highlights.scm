;; extends

; {#if} {:else} {/if} {@html} {@render} markers
[
  "#"
  ":"
  "/"
  "@"
] @punctuation.special

; <Component /> tags are colored like classes
((tag_name) @constructor
  (#lua-match? @constructor "^[A-Z]"))
