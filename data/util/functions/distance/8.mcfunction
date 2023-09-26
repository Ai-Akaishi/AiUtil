#> util:distance/8
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if entity @s[distance=256..] run scoreboard players add _ AiUtil 256
execute if entity @s[distance=256..] positioned ^ ^ ^256 run function util:distance/7
execute unless entity @s[distance=256..] run function util:distance/7
