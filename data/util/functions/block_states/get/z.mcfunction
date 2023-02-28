#> util:block_states/get/z
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result storage util:_ z int 0.9999999999 run data get storage util:_ z
execute unless data storage util:_ {z:0} positioned ~ ~ ~1 run function util:block_states/get/z

## ここでブロックのデータをとるよ
data modify storage util: out append value []
data modify storage util:_ x set from storage util: in.x
function util:block_states/get/x
