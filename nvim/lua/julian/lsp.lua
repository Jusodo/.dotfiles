-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local loaded, lsp = pcall(require, "lsp-zero")
if not loaded then
    print("lsp-zero not loaded")
    return
end

lsp.preset('recommended')
lsp.nvim_workspace()

lsp.setup()

-- keybindings
vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })
