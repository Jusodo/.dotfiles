local loaded, comment = pcall(require, "comment")
if not loaded then
    print("comment not loaded")
    return
end

comment.setup{}
