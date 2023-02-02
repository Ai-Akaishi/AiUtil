#> util:split/start/1024
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ str.1024 set string storage util:_ str.all 0 1024
function util:split/append/1024
data modify storage util:_ str.all set string storage util:_ str.all 1024
scoreboard players remove _ AiUtil 1024
execute if score _ AiUtil matches 1024.. run function util:split/start/1024
