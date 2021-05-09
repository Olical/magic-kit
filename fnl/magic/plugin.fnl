(module magic.plugin
  {autoload {a aniseed.core
             packer packer}})

(defn use [...]
  "Iterates through the arguments as pairs and calls packer's use function for
  each of them. Works around Fennel not liking mixed associative and sequential
  tables as well.

  This is just a helper / syntax sugar function to make interacting with packer
  a little more concise."
  (let [pkgs [...]]
    (packer.startup
      (fn [use]
        (for [i 1 (a.count pkgs) 2]
          (let [name (. pkgs i)
                opts (. pkgs (+ i 1))]
            (use (a.assoc opts 1 name))))))))

(defn req [name]
  "A shortcut to building a require string for your plugin
  configuration. Intended for use with packer's config or setup
  configuration options. Will prefix the name with `magic.plugin.`
  before requiring."
  (.. "require('magic.plugin." name "')"))
