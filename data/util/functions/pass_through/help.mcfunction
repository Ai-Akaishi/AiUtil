#> util:pass_through/help
# #util:pass_throughのヘルプを表示します。
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"translate":" === function #util:%s ===","color":"aqua","with":["pass_through"]}
tellraw @s "通過領域の移動方向を求めます。(リストの後ろが先頭です。)"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(util: in)  ","color":"gray"},{"text":"移動ブロック数","bold":true},{"text":"(int)","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(util: out)","color":"gray"},{"text":"移動方向のリスト","bold":true},{"text":"([string,...])","color":"gray"}]}
