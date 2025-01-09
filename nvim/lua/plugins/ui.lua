return {
  {
    'karb94/neoscroll.nvim',
    config = function()
        require('neoscroll').setup()
    end
  },
  {'AmberLehmann/candyland.nvim', priority = 1000,},
 -- {
 --   "tiagovla/tokyodark.nvim",
 --   opts = {
 --  --custom options here
 --   },
 --   config = function(_, opts)
 --       require("tokyodark").setup(opts) -- calling setup is optional
 --       vim.cmd [[colorscheme tokyodark]]
 --   end,
 --   },


  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup()
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup()
      vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
    end,
  },
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup()
    end,
  },
{
    "goolord/alpha-nvim",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- ASCII art di una ragazza anime
      dashboard.section.header.val = {
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡴⠾⠛⠛⠉⠉⠉⠉⠉⠛⠻⠶⣤⣀⢀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⣤⡾⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⣯⠉⠙⠻⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡿⠟⢀⣼⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣧⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⠋⠀⠀⠘⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣦⡀⠀⠀⠈⠙⠷⣦⣤⣄⣠⣤⣤⣤⣤⣄⣀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⢀⣴⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣶⣄⠀⠀⠈⢷⡀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠈⠉⠻⣦⡀⠀",
"⠀⠀⠀⠀⠀⢀⣴⠟⠁⠀⠀⠀⢠⡾⠂⠀⠀⢀⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⡿⠀⠀⠀⠘⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⠀",
"⠀⠀⠀⢀⣴⠟⠁⠀⣀⣤⠶⠞⠛⠻⠶⣤⡀⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⢠⡀⠀⠀⠀⢤⣶⢻⡟⣶⢠⡿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠃",
"⠀⠀⢠⡟⠁⠀⢠⡾⠋⠀⠀⠀⠀⠀⠀⠈⢿⣌⣛⡋⠀⠀⠀⠸⢧⡴⠛⠓⠞⠁⠀⠀⠀⠈⠛⠛⢈⣥⠟⠁⠈⠻⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣼⠏⠀",
"⠀⠀⣾⠁⠀⠀⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⡽⠟⠀⠀⠀⠀⠀⢀⣤⣤⣴⣤⣄⣀⣤⣤⠶⠞⠛⠁⠀⠀⠀⠀⠀⠉⠛⠶⢦⣤⣤⣤⣤⣤⡶⠾⠋⠁⠀⠀",
"⠀⠀⢹⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣏⣀⣀⣀⣀⣤⣤⣴⡟⠁⠘⣧⠀⠙⠻⠋⠛⣧⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠻⣦⡀⠀⠀⠀⠀⠀⠀⢀⣠⣴⠿⢋⣩⣽⠿⣯⣽⡇⠸⠋⠀⠀⣸⡟⠷⣤⡀⠀⠀⠈⠻⣆⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠈⠙⠛⠶⠶⠶⠚⠛⠋⠉⠀⣰⡟⠉⢀⡀⠀⣿⠀⠀⠀⠀⠀⠋⠀⠀⠀⠀⠀⠀⠀⣰⠟⠉⢻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡏⠀⠀⣿⠀⠘⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣧⠀⠀⠘⠷⣤⢿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣧⣀⣀⣼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣦⡀⠀⠀⠀⢈⣻⢦⣄⣀⣀⠀⢠⣴⣶⠞⠛⠉⠀⠈⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠛⠛⠛⠁⠀⠈⠛⢷⣤⣤⡾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
" ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      }

      dashboard.section.buttons.val = {
        dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
        dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
        dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
        dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
        dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
      }
      local function footer()
        local handle = io.popen("fortune")
        local fortune = handle:read("*a")
        handle:close()
        return fortune
      end

      dashboard.section.footer.val = footer()

      dashboard.config.opts.noautocmd = true

      vim.cmd[[autocmd User AlphaReady echo 'ready']]

      alpha.setup(dashboard.config)
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    event = "BufReadPre",
    config = function()
      require("colorizer").setup()
    end,
  },
{
  "MeanderingProgrammer/render-markdown.nvim",
  opts = {
    file_types = { "markdown", "Avante" },
  },
  ft = { "markdown", "Avante" },
}
}
