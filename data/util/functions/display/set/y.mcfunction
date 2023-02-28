#> util:display/set/y
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## ここでなんか、召喚したりあれこれするとこ
data modify storage util:_ data.block_state set from storage util:_ block_states[-1][-1][-1]
execute unless data storage util:_ data.block_state{Name:"minecraft:air"} unless data storage util:_ data.block_state{Name:"minecraft:cave_air"} unless data storage util:_ data.block_state{Name:"minecraft:void_air"} unless data storage util:_ data.block_state{Name:"minecraft:structure_void"} unless data storage util:_ data.block_state{Name:"minecraft:barrier"} unless data storage util:_ data.block_state{Name:"minecraft:water"} unless data storage util:_ data.block_state{Name:"minecraft:lava"} summon minecraft:block_display run function util:display/set/data

scoreboard players operation Y AiUtil += _ AiUtil

data remove storage util:_ block_states[-1][-1][-1]
execute if data storage util:_ block_states[-1][-1][-1] run function util:display/set/y
