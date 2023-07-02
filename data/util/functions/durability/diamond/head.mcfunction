#> util:durability/diamond/head
# ダイヤモンドの頭装備のダメージ計算

execute store result score _ AiUtil run data get storage util: in.rate 363
execute store result storage util:_ damage int -1 run scoreboard players remove _ AiUtil 363
