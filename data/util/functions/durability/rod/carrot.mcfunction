#> util:durability/rod/carrot
# 人参付きの棒のダメージ計算

execute store result score _ AiUtil run data get storage util: in.rate 25
execute store result storage util:_ damage int -1 run scoreboard players remove _ AiUtil 25
