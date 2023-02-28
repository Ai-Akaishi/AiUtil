#> util:display/help
# #util:displayのヘルプを表示します。
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"translate":" === function #util:%s ===","color":"aqua","with":["display"]}
tellraw @s "指定されたデータをもとにブロックディスプレイを召喚します。"
tellraw @s "エンティティを使用しているので、プレイヤーのいる場所からなど"
tellraw @s "読み込まれているチャンクから呼び出してください。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(util: in)  ","color":"gray"},{"text":"display data","bold":true},{"text":"({scale:float,tag:string,block_states:[[[{Name:string,Properties:{}},...],...],...])","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(util: out)","color":"gray"},{"text":"なし","bold":true},{"text":"(nothing)","color":"gray"}]}
