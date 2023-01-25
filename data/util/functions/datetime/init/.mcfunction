#> util:datetime/init/
# 日時初期化処理
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ chunk set value []
# data modify storage util:_ chunk append string storage util:_ load_time64 40 44
data modify storage util:_ chunk append string storage util:_ load_time64 36 40
data modify storage util:_ chunk append string storage util:_ load_time64 32 36
data modify storage util:_ chunk append string storage util:_ load_time64 28 32
data modify storage util:_ chunk append string storage util:_ load_time64 24 28

scoreboard players set _ AiUtil 0
scoreboard players set 10 AiUtil 10

function util:datetime/init/type1
function util:datetime/init/type1
function util:datetime/init/type1
function util:datetime/init/type2

scoreboard players reset 10 AiUtil

## ワールド読み込み時の日時を記録する
execute store result storage util:_ load_time int 1 run scoreboard players remove _ AiUtil 1
## ワールド読み込み時のゲームタイムを記録する
execute store result storage util:_ load_game_time int 1 run time query gametime
