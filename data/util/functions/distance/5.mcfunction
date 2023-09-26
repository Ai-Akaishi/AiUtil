#> util:distance/5
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if entity @s[distance=32..] run scoreboard players add _ AiUtil 32
execute if entity @s[distance=32..] positioned ^ ^ ^32 run function util:distance/4
execute unless entity @s[distance=32..] run function util:distance/4
