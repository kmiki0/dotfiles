require('hlchunk').setup({
    chunk = {
        enable = true,
        priority = 15,
        use_treesitter = true, -- コードブロックをハイライトするか
        chars = { -- チャンクのデザイン
            horizontal_line = "─",
            vertical_line = "│",
            left_top = "╭",
            left_bottom = "╰",
            right_arrow = ">",
        },
        max_file_size = 1024 * 1024, -- 上限を超えると機能OFF
        error_sign = true, -- コードブロックがエラーの場合にハイライトの色を変更
        style = {
            { fg = "#806d9c" }, -- Violet
            { fg = "#c21f30" }, -- maple red
        },
        -- animation related
        duration = 200,
        delay = 100,
            -- ...
    },
})
