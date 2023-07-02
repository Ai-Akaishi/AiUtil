#> util:durability/rod/warped
# 歪んだキノコ付きの棒のダメージ計算

execute store result score _ AiUtil run data get storage util: in.rate 100
execute store result storage util:_ damage int -1 run scoreboard players remove _ AiUtil 100
