(module magic.plugin.auto-pairs
  {autoload {nvim aniseed.nvim}
   require-macros [magic.macros]})

(defn setup []
  (let [auto-pairs nvim.g.AutoPairs]
    (when auto-pairs
      (tset auto-pairs "'" nil)
      (tset auto-pairs "`" nil)
      (set nvim.b.AutoPairs auto-pairs))))

(augroup auto-pairs-config
  (nvim.ex.autocmd
    :FileType "clojure,fennel,scheme"
    (.. "call v:lua.require('" *module-name* "').setup()")))
