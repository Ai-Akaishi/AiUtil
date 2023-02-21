#> util:xp/help
# #util:xpのヘルプを表示します。
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"translate":" === function #util:%s ===","color":"aqua","with":["xp"]}
tellraw @s "経験値を百分率(%)で設定します。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(util: in)  ","color":"gray"},{"text":"百分率","bold":true},{"text":"(int)","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(util: out)","color":"gray"},{"text":"なし","bold":true},{"text":"(nothing)","color":"gray"}]}
