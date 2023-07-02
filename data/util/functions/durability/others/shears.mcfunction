#> util:durability/others/shears
# ハサミのダメージ計算

execute store result score _ AiUtil run data get storage util: in.rate 238
execute store result storage util:_ damage int -1 run scoreboard players remove _ AiUtil 238
