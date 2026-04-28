# dotfiles

## インストール
```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/kmiki0/dotfiles/master/install.sh)"
```

 






## フォルダ階層
```
dotfiles/
　├ .vim/ 
　│　├ lua/                 // NeoVimに関する設定
　│　│　├ core/             // 全般的な設定
　│　│　│　├ init.lua       // 基本的な設定
　│　│　│　├ keys.lua 
　│　│　│　├ options.lua
　│　│　│　└ plugins.lua
　│　│　└ plugins/          // プラグインに関する設定
　│　└ init.lua             // 設定ファイルの読み込み
　└ etc/
　 　├ .vimrc               // vscode 用
　 　└ .vivsmrc             // visual studio 用
```


## Visual Studio
- StatusLine での確認方法  
    `:set` : 変更された設定一覧表示
    `:set shiftwidth?` : 後ろに設定値+? を付けることで個別で確認


## VScode
- コマンドパレット(Ctrl + Shift + p) → `Preferences: Open User Settings (JSON)` で、setting.json を
- vimrc は、リマップのみなので、記載しない


## Vim リマップ


#### カーソル系 
    - カーソル位置、戻る : `C-o`


- カーソル位置、戻る : `C-o`
- カーソル位置、進む : `C-i`



#### 操作系 
- 定義元に移動 : `gd` → `<Leader>g`


#### 文字列 操作
- 行インデントごと、削除 : `dd`
- 行インデント残し、削除 : `cc`



#### 文字列検索
- カーソルより後検索 : `*`
- カーソルより前検索 : `#`


#### ファイル操作
- ファイルを閉じる : `ZZ`

