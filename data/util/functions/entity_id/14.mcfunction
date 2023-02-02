#> util:entity_id/14
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ _ set string storage util: in 14 15
execute if data storage util:_ {_:"\""} run data modify storage util: out set string storage util: in 0 14
execute unless data storage util:_ {_:"\""} run function util:entity_id/15
