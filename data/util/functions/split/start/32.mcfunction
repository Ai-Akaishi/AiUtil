#> util:split/start/32
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ str.32 set string storage util:_ str.all 0 32
function util:split/append/32
data modify storage util:_ str.all set string storage util:_ str.all 32
scoreboard players remove _ AiUtil 32
