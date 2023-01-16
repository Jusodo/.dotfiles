local loaded, bufferline = pcall(require, "bufferline")
if not loaded then
    print("bufferline not loaded")
	return
end

bufferline.setup{}

