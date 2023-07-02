#> util:schedule/durability/on
# Durabilityのスコアをつけるだけでメインハンドのアイテムの耐久値を変更するやつ
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard objectives add Durability dummy "0~100を設定するだけでメインハンドの耐久値を変更するスコア"

execute as @a[scores={Durability=0..}] at @s run function util:schedule/durability/apply

execute in minecraft:overworld run schedule function util:schedule/durability/on 1t
