#> util:block_states/get/
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify entity @s item.Count set value 1b

data modify storage util: out set value []

## ディスプレイ召喚
data modify storage util:_ z set from storage util: in.z
function util:block_states/get/z

kill @s
