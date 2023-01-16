local lualine_loaded, lualine = pcall(require, "lualine")
if not lualine_loaded then
    print("lualine not loaded")
    return
end

local custom_lualine = require("lualine.themes.onedark")
-- make the background transparent
custom_lualine.normal.c.bg = 'None'

lualine.setup{
    options = {
        icons_enabled = true,
        theme = custom_lualine,
        component_seperators = "|",
        section_seperators = "",
    }, 
    sections = { 
        lualine_a = { 
            {
                "mode",
                "buffers",
            }
        }
    }
}
