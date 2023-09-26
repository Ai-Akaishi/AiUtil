#> util:distance/6
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if entity @s[distance=64..] run scoreboard players add _ AiUtil 64
execute if entity @s[distance=64..] positioned ^ ^ ^64 run function util:distance/5
execute unless entity @s[distance=64..] run function util:distance/5
