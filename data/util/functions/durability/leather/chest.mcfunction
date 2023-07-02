#> util:durability/leather/chest
# 革の胴装備のダメージ計算

execute store result score _ AiUtil run data get storage util: in.rate 80
execute store result storage util:_ damage int -1 run scoreboard players remove _ AiUtil 80
