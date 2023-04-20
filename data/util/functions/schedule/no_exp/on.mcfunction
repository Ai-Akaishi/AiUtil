#> util:schedule/no_exp/on
# モブにNoExpのタグをつけるだけで経験値ドロップなくしちゃうやつだよ
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

execute as @e[tag=NoExp,team=!AiUtil] at @s run function util:schedule/no_exp/apply

execute in minecraft:overworld run schedule function util:schedule/no_exp/on 1t
