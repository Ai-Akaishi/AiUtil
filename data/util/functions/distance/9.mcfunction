#> util:distance/9
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if entity @s[distance=512..] run scoreboard players add _ AiUtil 512
execute if entity @s[distance=512..] positioned ^ ^ ^512 run function util:distance/8
execute unless entity @s[distance=512..] run function util:distance/8
