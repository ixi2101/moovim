require('config.remap')
require('config.lazy')

-- OPTIONS
vim.o.number = true
vim.o.mouse = 'a'
vim.o.cursorline = true




require('telescope').load_extension('fzf')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = 'Telescope references' })
vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = 'Telescope definitions' })
vim.keymap.set('n', 'gO', builtin.lsp_document_symbols, { desc = 'Telescope symbols' })
vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, {desc = 'Lsp rename'})
vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format, {desc = 'Lsp rename'})

-- OIL
require("oil").setup()

-- LSP 
vim.lsp.enable('clangd')

-- TREESITTER
require("nvim-treesitter.configs").setup{
	ensure_installed = {"c", "cpp", "python"},
	highlight = {
		enable = true,

	}
}

