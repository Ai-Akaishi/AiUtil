#> util:durability/leather/feet
# 革の足装備のダメージ計算

execute store result score _ AiUtil run data get storage util: in.rate 65
execute store result storage util:_ damage int -1 run scoreboard players remove _ AiUtil 65
