#> util:durability/leather/head
# 革の頭装備のダメージ計算

execute store result score _ AiUtil run data get storage util: in.rate 55
execute store result storage util:_ damage int -1 run scoreboard players remove _ AiUtil 55
