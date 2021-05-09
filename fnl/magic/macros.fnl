;; Trick vim-sleuth into using the right indentation for this file.
(do
  true)

;; These macro functions are executed at compile time to transform our code,
;; add more expressive syntax and create domain specific languages.

;; This file is never compiled to Lua itself, it's only required by the Fennel
;; compiler.

;; Example:
; (module my.fennel.module
;   {require-macros [magic.macros]})
; (some-macro 123)

;; I consider this to be an advanced concept within Lisp languages but one you
;; should try to learn some day. Start small, copy and modify what you find
;; here. You'll get it eventually!

;; Rule of macros: Use a function instead.

;; Macros should be used with care and extremely sparingly. If you can get away
;; with a function, you should! If you're not careful they'll make your code
;; unreadable and far too "clever", use them when plain functions aren't enough
;; or are too awkward to wield for your specific problem.

{;; This is just a silly example macro.
 ; (infix-example-macro 2 + 3) => compiles to: (+ 2 3) => evaluates to: 5
 :infix-example-macro
 (fn [x op y]
   `(,op ,x ,y))

 ;; Create an augroup for your autocmds.
 ; (augroup my-group
 ;   (nvim.ex.autocmd ...))
 :augroup
 (fn [name ...]
   `(do
      (vim.cmd (.. "augroup " ,(tostring name) "\nautocmd!"))
      ,...
      (vim.cmd "augroup END")
      nil))}
