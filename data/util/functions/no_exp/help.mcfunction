#> util:no_exp/help
# #util:no_expのヘルプを表示します。
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"translate":" === function #util:%s ===","color":"aqua","with":["no_exp"]}
tellraw @s "エンティティの経験値ドロップを無効化します。アイテムのドロップもなくなります。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(util: in)  ","color":"gray"},{"text":"なし","bold":true},{"text":"(nothing)","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(util: out)","color":"gray"},{"text":"なし","bold":true},{"text":"(nothing)","color":"gray"}]}
