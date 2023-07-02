#> util:durability/gold/tool
# 金のツールのダメージ計算

execute store result score _ AiUtil run data get storage util: in.rate 32
execute store result storage util:_ damage int -1 run scoreboard players remove _ AiUtil 32
