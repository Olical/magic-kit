(module magic.plugin.statusline)

(let [(ok? statusline) (pcall #(require :statusline))]
  (when ok?
    (set statusline.lsp_diagnostics false)))
