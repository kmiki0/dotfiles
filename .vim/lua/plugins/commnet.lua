require('Comment').setup({
    opts = {
        -- コメントと行の間にスペースを追加するか
        padding = true,
        -- カーソルをその位置に留まるか
        sticky = true,
        ---NORMAL モードのトグル マッピング
        toggler = {
            -- 行コメント切り替え
            line = '<c-/>',
            -- ブロックコメント切り替え
            block = '<c-/>/',
        },
        ---NORMAL および VISUAL モードのオペレータ保留マッピング
        opleader = {
            -- 行コメント
            line = '<c-/>',
            -- ブロックコメント
            block = '<c-/>/',
        },
    },
})
