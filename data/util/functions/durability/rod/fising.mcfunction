#> util:durability/rod/fising
# 釣り竿のダメージ計算

execute store result score _ AiUtil run data get storage util: in.rate 64
execute store result storage util:_ damage int -1 run scoreboard players remove _ AiUtil 64
