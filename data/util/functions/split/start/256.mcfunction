#> util:split/start/256
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ str.256 set string storage util:_ str.all 0 256
function util:split/append/256
data modify storage util:_ str.all set string storage util:_ str.all 256
scoreboard players remove _ AiUtil 256
