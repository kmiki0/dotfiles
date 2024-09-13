# dotfiles

## インストール
```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/kmiki0/dotfiles/master/install.sh)"
```


#### フォルダ階層　説明
```javascript
dotfiles/
　├ .vim/ 
　│　├ lua/ // NeoVimに関する設定
　│　│　├ core/ // 全般的な設定
　│　│　│　├ init.lua // 基本的な設定
　│　│　│　├ keys.lua 
　│　│　│　├ options.lua
　│　│　│　└ plugins.lua
　│　│　└ plugins/ // プラグインに関する設定
　│　└ init.lua // 設定ファイルの読み込み
　├ etc/
　├ usr/
　│　└ local/
　│　　　└ bin/
　└ lib/

```
