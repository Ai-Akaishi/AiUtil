#> util:block_states/
# 一定範囲内のblock_stateを取得する
## 入力: 取得範囲({x:int,y,int,z:int})
## 出力: block_stateのリスト([[[{},...],...],...])
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

# data modify storage util: in set value {x:10,y:10,z:10}

## ブロックのデータを取得する
execute summon minecraft:item_display run function util:block_states/get/
