local colors = require("galaxyline.highlighting")

require("galaxyline").section.left[1] = {
  FileSize = {
    provider = "FileSize",
    condition = function()
      return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
    end,
    icon = "   ",
    highlight = { colors.green, colors.purple },
    separator = "",
    separator_highlight = { colors.purple, colors.darkblue },
  }
}

