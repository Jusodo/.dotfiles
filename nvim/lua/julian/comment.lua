local loaded, comment = pcall(require, "Comment")
if not loaded then
    print("Comment not loaded")
    return
end

comment.setup()
