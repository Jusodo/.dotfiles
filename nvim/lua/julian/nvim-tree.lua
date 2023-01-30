-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


-- empty setup using defaults
require("nvim-tree").setup({
    disable_netrw = true,
    hijack_netrw = true,
    respect_buf_cwd = true,
    sync_root_with_cwd = true,
    view = {
        float = {
            enable = true,
            open_win_config = function ()
                local ratio_width = 0.8
                local ratio_height = 0.6
                local screen_width = vim.opt.columns:get()
                local screen_height = vim.opt.lines:get() - vim.opt.cmdheight:get()
                local window_width = screen_width * ratio_width
                local window_heigth = screen_height * ratio_height
                local calculated_width = math.floor(window_width)
                local calculated_heigth = math.floor(window_heigth)

                local position_x = (screen_width - window_width) / 2
                local position_y = ((vim.opt.lines:get() - window_heigth) / 2 ) - vim.opt.cmdheight:get()

                return {
                    border = "rounded",
                    relative = "editor",
                    width = calculated_width,
                    height = calculated_heigth,
                    row = position_y,
                    col = position_x,
                }
            end,
        },
    }
})

