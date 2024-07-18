return {
  -- layout
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    cmd = {
      "NvimTreeOpen",
      "NvimTreeClose",
      "NvimTreeFocus",
      "NvimTreeToggle",
    },
    config = function()
      require('plugins.config.nvim-tree')
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('plugins.config.lualine')
    end,
  },
  -- edit action
  {
    'numToStr/Comment.nvim',
    config = function()
      require('plugins.config.comment')
    end,
  },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("plugins.config.chatgpt")
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  },
  -- edit viewing
  {
    'rinx/cmp-skkeleton',
    dependencies = {
      {
        'vim-skk/skkeleton',
        dependencies = {
          'vim-denops/denops.vim',
        },
        config = function()
          require('plugins.config.skkeleton')
        end,
      }
    }
  },
  -- dev
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  }
}
