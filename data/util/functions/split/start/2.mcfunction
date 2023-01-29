#> util:split/start/2
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ str.2 set string storage util:_ str.all 0 2
function util:split/append/2
data modify storage util:_ str.all set string storage util:_ str.all 2
scoreboard players remove _ AiUtil 2
