return {
  -- lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('plugins.lualine')
    end,
  },
  -- neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- not strictly required, but recommended
    },
    config = function()
      require('plugins.neotree')
    end,
  },
  -- hlchunk
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("plugins.hlchunk")
    end
  },
  -- Comment
  {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    }
  },
  -- alpha-nvim
  {
    'goolord/alpha-nvim',
    config = function()
      require('plugins.alpha-nvim')
    end
  },
  -- alpha-nvim
  {
    'goolord/alpha-nvim',
    config = function()
      require('plugins.alpha-nvim')
    end
  },
  --  
  --   -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
  -- telescope
}
