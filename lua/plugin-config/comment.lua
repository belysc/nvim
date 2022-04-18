local M = {
  'numToStr/Comment.nvim'
}

function M.config()
  require("Comment").setup(require("keybindings").comment)
end

return M
