#> util:split/start/8
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ str.8 set string storage util:_ str.all 0 8
function util:split/append/8
data modify storage util:_ str.all set string storage util:_ str.all 8
scoreboard players remove _ AiUtil 8
