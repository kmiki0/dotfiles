## NeoVim パッケージマネージャー（lazy.nvim）の使い方

- インストール前提
    - NeoVim
    - git
    - Nerd Font 見た目かっこいい

- `init.lua` を作成する場所を特定  
```shell
nvim -V1 -es -c "echo stdpath('config') . '/init.vim'" -cq
```

- `init.lua` に以下のコードを追加
```lua

-- 1. プラグインマネージャーの設定
    -- Neovim起動時にlazypathへlazy.nvimがインストールされているか確認する
    -- インストールされていなければgit cloneを使ってlazypathへlazy.nvimがインストールされます。
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- この中に追加したいプラグインを書く。
require("lazy").setup({
    -- 1. ステータスラインのプラグイン 
    {
        -- GitHubの"ユーザー名/リポジトリ名"のフォーマットで記載する。
        "nvim-lualine/lualine.nvim",
        -- VeryLazyイベントをトリガーにして、プラグインを遅延ロードする。
        event = "VeryLazy",
        opts = {
            --ここにオプションを追加します
        },
        -- 前提のプラグインを指定する。
        dependencies = {
        }
    },
    -- 1. ファイルツリーを表示する
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        --"3rd/image.nvim", --プレビュー ウィンドウでのオプションの画像サポート: 詳細については、「# プレビュー モード」を参照してください。
        }
    },
    -- 1. タブ表示
    {
        'akinsho/bufferline.nvim',
        version = "*", 
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    -- 1. 通知の見た目を変更
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = { },
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    }
    -- 1. シンタックスハイライトの変更
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = "maintained",
            highlight = {
            enable = true,
            },
        })
        end,
    }
    -- 1. ポップアップの見た目を変更
    {
        "rcarriga/nvim-notify",
        event = "BufRead",
    }
    -- 1. Copilotの設定
    {
        "github/copilot.vim",
        event = "BufRead",
    }
})
```


- pixivの人の記事を参考
    https://inside.pixiv.blog/2024/05/07/120000
    https://github.com/Hiroya-W/dotfiles/tree/main
    - 環境もほぼ一緒で、IMEの日本語入力も出来るようにしている。

- みんなのdotfiles
    - https://github.com/glaucus03/dotfiles/tree/main
    - 
