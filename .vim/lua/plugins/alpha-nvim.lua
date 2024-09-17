local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

-- Header (起動画面の上部に表示されるアスキーアートやテキスト)
dashboard.section.header.val = {
    [[ ______  ______   __   ______  ______ ]],
    [[|__    ||    __| |__| |__    ||      |]],
    [[|    __||  __  |  __  |__    ||  --  |]],
    [[|______||______| |__| |______||______|]],
}

-- ボタンやショートカットの設定
dashboard.section.buttons.val = {
  dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("t", "  Neo Tree", ":Neotree<CR>"),
  dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
  dashboard.button("p", "  Find project", ":Telescope projects<CR>"),
  dashboard.button("r", "  Recently used files", ":Telescope oldfiles<CR>"),
  dashboard.button("c", "  Config alpha-nvim", ":e $HOME/dotfiles/.vim/lua/plugins/alpha-nvim.lua<CR>"),
  dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

-- Footer (フッターメッセージやバージョン情報など)
dashboard.section.footer.val = "Neovim loaded successfully"

-- 設定を反映
alpha.setup(dashboard.config)




 --                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
