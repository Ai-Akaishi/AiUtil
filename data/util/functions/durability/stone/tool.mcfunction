#> util:durability/stone/tool
# 石のツールのダメージ計算

execute store result score _ AiUtil run data get storage util: in.rate 131
execute store result storage util:_ damage int -1 run scoreboard players remove _ AiUtil 131
