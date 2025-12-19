-------------------------------------
-- Chloe B.'s Neovim Configuration --
-------------------------------------

-- Setup lazy.nvim's path and clone lazy.nvim from GitHub.
local lazy_data_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" -- ~/.local/share/nvim/lazy/lazy.nvim

if not (vim.uv or vim.loop).fs_stat(lazy_data_path) then
    local lazy_github_repository = "https://github.com/folke/lazy.nvim.git"

    local command_output = vim.fn.system(
        { "git", 
          "clone", 
          "--filter=blob:none", 
          "--branch=stable", 
          lazy_github_repository, 
          lazy_data_path 
        }
    ) -- git clone --filter=blob:none --branch=stable https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/lazy/lazy.nvim

    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "[ERROR]: Failed to clone lazy.nvim.\n", "ErrorMsg" },
            { "[INFO]: " .. command_output .. ".\n", "StdoutMsg" },
            { "[INFO]: Press any key to exit." }
        }, true, {})

        vim.fn.getchar()

        os.exit(1)
    end
end

-- Prepend Lazy's data path to the beginning of the runtime path.
vim.opt.rtp:prepend(lazy_data_path)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Set the soft tab stop to four (4).
vim.opt.softtabstop = 4

-- Set the shift width to four (4).
vim.opt.shiftwidth = 4

-- Set expand tab (to spaces) to true.
vim.opt.expandtab = true

-- Show the absolute line number on the current line.
vim.opt.number = true

-- Show the relative line number for surrounding lines.
vim.opt.relativenumber = true

-- Visualize tabulation (tab) characters.
vim.opt.list = true
vim.opt.listchars = {
    tab = ">-"
}

-- Setup lazy.nvim and associated plugins.
require("lazy").setup({
    spec = {
        { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", lazy = false },
        { "xiyaowong/transparent.nvim" },
	{ "EdenEast/nightfox.nvim" }
    },

    install = {
        colorscheme = { "carbonfox" }
    },

    checker = {
        enabled = true
    }
})

vim.cmd.colorscheme("nightfox")
