local loaded, gitsigns = pcall(require, "gitsigns")
if not loaded then 
    print("Gitsigns could not be loaded")
    return
end

gitsigns.setup()
