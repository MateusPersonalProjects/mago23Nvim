--[[
return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    -- you can do it like this with a config function
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}

return {
  {
    "metalelf0/black-metal-theme-neovim",
    lazy = false,
    priority = 1000,
    config = function()
      require("black-metal").setup({
        theme = "burzum", -- Options include: bathory, burzum, darkthrone, mayhem, nile, venom, etc.
        trve = true, -- Set to false if you want to allow light variants
      })
      require("black-metal").load()
    end,
  },
}

]]
return {
  "xLeapProtocol/gruber-darker.nvim",
  lazy = false, -- Garante que o tema será carregado no início para evitar flash de tela em branco
  priority = 1000, -- Carrega antes de qualquer outro plugin
  config = function()
    -- (Opcional) Configurações antes de carregar o tema
    -- vim.g.gruber_darker_italic = true

    -- Comando para aplicar o tema
    vim.cmd.colorscheme("gruber-darker")
  end,
}
