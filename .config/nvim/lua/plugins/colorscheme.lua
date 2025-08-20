return {
  {
    dir = "~/dev/curr.nvim", -- absolute path to the folder above
    lazy = false,               -- load at startup
    priority = 1000,            -- load before anything that might set highlights
    config = function()
    vim.cmd("colorscheme curr")
    end,
  },
}

