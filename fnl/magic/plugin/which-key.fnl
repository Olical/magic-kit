(module magic.plugin.which-key
  {autoload {nvim aniseed.nvim}})

(nvim.ex.nnoremap "<silent> <leader> :WhichKey '<Space>'<CR>")
(nvim.ex.nnoremap "<silent> <localleader> :WhichKey '<Space>'<CR>")


