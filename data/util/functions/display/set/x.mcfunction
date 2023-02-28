#> util:display/set/x
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## ここでなんか、召喚したりあれこれするとこ
data modify storage util:_ y set from storage util: in.y
scoreboard players set Y AiUtil 0
function util:display/set/y

scoreboard players operation X AiUtil += _ AiUtil

data remove storage util:_ block_states[-1][-1]
execute if data storage util:_ block_states[-1][-1] run function util:display/set/x
