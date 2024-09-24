-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = true
vim.opt.relativenumber = true
vim.opt.guifont = "JetBrains Mono:h20"

-- Mapeamento para Tab avançar e Shift+Tab voltar entre buffers
lvim.keys.normal_mode["<Tab>"] = ":bnext<CR>"
lvim.keys.normal_mode["<S-Tab>"] = ":bprev<CR>"

lvim.leader = "space"
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.lualine.style = "default" -- or "none"
lvim.colorscheme = "rose-pine-main"

-- Usando o novo método para abrir NvimTree automaticamente
-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     require("nvim-tree.api").tree.open()
--   end
-- })

-- Plugins
lvim.plugins = {
  { "rose-pine/neovim", name = "rose-pine" },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}
