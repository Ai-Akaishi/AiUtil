#> util:block_states/get/y
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result storage util:_ y int 0.9999999999 run data get storage util:_ y
execute unless data storage util:_ {y:0} positioned ~ ~1 ~ run function util:block_states/get/y

## ここでブロックのデータをとるよ
item modify entity @s container.0 util:block_state

data modify storage util: out[-1][-1] append from entity @s item.tag
