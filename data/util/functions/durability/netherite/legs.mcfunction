#> util:durability/netherite/legs
# ネザライトの脚装備のダメージ計算

execute store result score _ AiUtil run data get storage util: in.rate 555
execute store result storage util:_ damage int -1 run scoreboard players remove _ AiUtil 555
