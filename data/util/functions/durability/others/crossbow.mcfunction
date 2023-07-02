#> util:durability/others/crossbow
# クロスボウのダメージ計算

execute store result score _ AiUtil run data get storage util: in.rate 465
execute store result storage util:_ damage int -1 run scoreboard players remove _ AiUtil 465
