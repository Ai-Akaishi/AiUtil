#> util:block_states/help
# #util:block_statesのヘルプを表示します。
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"translate":" === function #util:%s ===","color":"aqua","with":["block_states"]}
tellraw @s "指定された範囲のblock_stateを取得します。"
tellraw @s "エンティティを使用しているので、プレイヤーのいる場所からなど"
tellraw @s "読み込まれているチャンクから呼び出してください。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(util: in)  ","color":"gray"},{"text":"取得範囲","bold":true},{"text":"({x:int,y,int,z:int})","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(util: out)","color":"gray"},{"text":"block_stateのリスト","bold":true},{"text":"([[[{Name:string,Properties:{}},...],...],...])","color":"gray"}]}
