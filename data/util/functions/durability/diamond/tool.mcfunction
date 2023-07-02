#> util:durability/diamond/tool
# ダイヤモンドのツールのダメージ計算

execute store result score _ AiUtil run data get storage util: in.rate 1561
execute store result storage util:_ damage int -1 run scoreboard players remove _ AiUtil 1561
