#> util:display/set/z
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## ここでなんか、召喚したりあれこれするとこ
data modify storage util:_ x set from storage util: in.x
scoreboard players set X AiUtil 0
function util:display/set/x

scoreboard players operation Z AiUtil += _ AiUtil

data remove storage util:_ block_states[-1]
execute if data storage util:_ block_states[-1] run function util:display/set/z
