#> util:help/distance
#util:distanceのヘルプを表示します。
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"translate":" === function #util:%s ===","color":"aqua","with":["distance"]}
tellraw @s "実行地点と実行者の距離を求めます。単位はmです。方角によって誤差が生じることがあります。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(util: in)  ","color":"gray"},{"text":"なし","bold":true},{"text":"(nothing)","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(util: out)","color":"gray"},{"text":"距離","bold":true},{"text":"(double)","color":"gray"}]}
