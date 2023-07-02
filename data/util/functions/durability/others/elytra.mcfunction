#> util:durability/others/elytra
# エリトラのダメージ計算

execute store result score _ AiUtil run data get storage util: in.rate 432
execute store result storage util:_ damage int -1 run scoreboard players remove _ AiUtil 432
