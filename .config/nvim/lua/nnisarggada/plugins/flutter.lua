-- import comment plugin safely
local setup, comment = pcall(require, "flutter-tools")
if not setup then
  return
end

-- enable comment
comment.setup()
