#> util:datetime/check/read/run/
# 時刻チェックをセットアップする

data modify storage util:_ current_time set string block ~ ~ ~ LastOutput 224 232
setblock ~ ~ ~ minecraft:air
function #util:datetime

execute store result score Time AiUtil run data get storage util: out.hour 3600
execute store result score _ AiUtil run data get storage util: out.minute 60
scoreboard players operation Time AiUtil += _ AiUtil
execute store result score _ AiUtil run data get storage util: out.second
scoreboard players operation Time AiUtil += _ AiUtil

data modify storage util:_ char set string storage util:_ current_time 0 1
function util:datetime/check/read/run/get_digit
execute store result storage util:_ score int 36000 run scoreboard players get _ AiUtil
execute store result score _ AiUtil run data get storage util:_ score
scoreboard players operation Time AiUtil -= _ AiUtil

data modify storage util:_ char set string storage util:_ current_time 1 2
function util:datetime/check/read/run/get_digit
execute store result storage util:_ score int 3600 run scoreboard players get _ AiUtil
execute store result score _ AiUtil run data get storage util:_ score
scoreboard players operation Time AiUtil -= _ AiUtil

data modify storage util:_ char set string storage util:_ current_time 3 4
function util:datetime/check/read/run/get_digit
execute store result storage util:_ score int 600 run scoreboard players get _ AiUtil
execute store result score _ AiUtil run data get storage util:_ score
scoreboard players operation Time AiUtil -= _ AiUtil

data modify storage util:_ char set string storage util:_ current_time 4 5
function util:datetime/check/read/run/get_digit
execute store result storage util:_ score int 60 run scoreboard players get _ AiUtil
execute store result score _ AiUtil run data get storage util:_ score
scoreboard players operation Time AiUtil -= _ AiUtil

data modify storage util:_ char set string storage util:_ current_time 6 7
function util:datetime/check/read/run/get_digit
execute store result storage util:_ score int 10 run scoreboard players get _ AiUtil
execute store result score _ AiUtil run data get storage util:_ score
scoreboard players operation Time AiUtil -= _ AiUtil

data modify storage util:_ char set string storage util:_ current_time 7 8
function util:datetime/check/read/run/get_digit
execute store result storage util:_ score int 20 run scoreboard players operation Time AiUtil -= _ AiUtil
execute store result score _ AiUtil run data get storage util:_ score

execute store result score Time AiUtil run data get storage util:_ load_game_time
execute if score _ AiUtil matches -864000..864000 store result storage util:_ load_game_time int 1 run scoreboard players operation Time AiUtil += _ AiUtil
