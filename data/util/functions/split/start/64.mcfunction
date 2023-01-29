#> util:split/start/64
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ str.64 set string storage util:_ str.all 0 64
function util:split/append/64
data modify storage util:_ str.all set string storage util:_ str.all 64
scoreboard players remove _ AiUtil 64
