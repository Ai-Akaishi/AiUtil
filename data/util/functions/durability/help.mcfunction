#> util:durability/help
# #util:durabilityのヘルプを表示します。
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"translate":" === function #util:%s ===","color":"aqua","with":["durability"]}
tellraw @s "アイテムの耐久値を割合で変更します。"
tellraw @s "スロット指定がない場合は現在のメインハンドに適用します。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(util: in)  ","color":"gray"},{"text":"変更するスロットと耐久値の割合","bold":true},{"text":"({slot:byte,rate:float})","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(util: out)","color":"gray"},{"text":"なし","bold":true},{"text":"(nothing)","color":"gray"}]}
