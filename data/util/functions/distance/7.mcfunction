#> util:distance/7
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if entity @s[distance=128..] run scoreboard players add _ AiUtil 128
execute if entity @s[distance=128..] positioned ^ ^ ^128 run function util:distance/6
execute unless entity @s[distance=128..] run function util:distance/6
