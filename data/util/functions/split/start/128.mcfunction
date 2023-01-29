#> util:split/start/128
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ str.128 set string storage util:_ str.all 0 128
function util:split/append/128
data modify storage util:_ str.all set string storage util:_ str.all 128
scoreboard players remove _ AiUtil 128
