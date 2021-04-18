(module magic.init)

;; Aniseed compiles this (and all other Fennel files under fnl) into the lua
;; directory. It's configured by init.lua to load this module once ready.

;; We'll use modules, macros and functions to define our configurations and
;; required plugins. We can use Aniseed to evaluate code as we edit it or just
;; restart Neovim.

;; You can learn all about Conjure and how to evaluate things by executing
;; :ConjureSchool in your Neovim. This will launch an interactive tutorial.

(print "Hello, World!")
