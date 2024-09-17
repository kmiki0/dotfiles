local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

-- Header (起動画面の上部に表示されるアスキーアートやテキスト)
dashboard.section.header.val = {
--    [[                                                ,,                     ]],
--    [[`7MN.   `7MF'                   `7MMF'   `7MF'  db"                    ]],
--    [[  MMN.    M                       `MA     ,V                           ]],
--    [[  M YMb   M   .gP"Ya   ,pW"Wq.     VM:   ,V   `7MM  `7MMpMMMb.pMMMb.   ]],
--    [[  M  `MN. M  ,M'   Yb 6W'   `Wb     MM.  M'     MM    MM    MM    MM   ]], 
--    [[  M   `MM.M  8M"""""" 8M     M8     `MM A'      MM    MM    MM    MM   ]],
--    [[  M     YMM  YM.    , YA.   ,A9      :MM;       MM    MM    MM    MM   ]],
--    [[.JML.    YM   `Mbmmd'  `Ybmd9'        VF      .JMML..JMML  JMML  JMML. ]],
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
  dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

-- Footer (フッターメッセージやバージョン情報など)
dashboard.section.footer.val = "Neovim loaded successfully"

-- 設定を反映
alpha.setup(dashboard.config)




 --                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
