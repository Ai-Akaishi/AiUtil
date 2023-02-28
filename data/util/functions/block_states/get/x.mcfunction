#> util:block_states/get/x
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result storage util:_ x int 0.9999999999 run data get storage util:_ x
execute unless data storage util:_ {x:0} positioned ~1 ~ ~ run function util:block_states/get/x

## ここでブロックのデータをとるよ
data modify storage util: out[-1] append value []
data modify storage util:_ y set from storage util: in.y
function util:block_states/get/y
