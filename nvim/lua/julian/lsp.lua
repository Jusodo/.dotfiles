-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local loaded, lsp = pcall(require, "lsp-zero")
if not loaded then
    print("lsp-zero not loaded")
    return
end

lsp.preset('recommended')

lsp.setup()
