#> util:schedule/durability/apply
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util: in set value {rate:1f}
execute store result storage util: in.rate float 0.01 run scoreboard players get @s Durability
function #util:durability
scoreboard players reset @s Durability
