#> util:type/help
# #util:typeのヘルプを表示します。
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

# 入力データの型を取得します
## 入力: 何でも(any) => storage util: in
## 出力: 型の名前(string) => storage util: out

tellraw @s {"translate":" === function #util:%s ===","color":"aqua","with":["type"]}
tellraw @s "入力データの型を取得します。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(util: in)  ","color":"gray"},{"text":"何でも","bold":true},{"text":"(any)","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(util: out)","color":"gray"},{"text":"型の名前","bold":true},{"text":"(string)","color":"gray"}]}
