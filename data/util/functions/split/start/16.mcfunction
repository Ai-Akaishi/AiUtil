#> util:split/start/16
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ str.16 set string storage util:_ str.all 0 16
function util:split/append/16
data modify storage util:_ str.all set string storage util:_ str.all 16
scoreboard players remove _ AiUtil 16
