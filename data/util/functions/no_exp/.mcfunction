#> util:no_exp/
# エンティティの経験値ドロップを無効化します。アイテムのドロップもなくなります。
## 入力: なし(nothing) <= storage util: in
## 出力: なし(nothing) => storage util: out
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ data set value {Health:1024f}
data modify storage util:_ data set from entity @s Silent

data merge entity @s {ArmorDropChances:[-1e40f,-1e40f,-1e40f,-1e40f],HandDropChances:[-1e40f,-1e40f],DeathLootTable:"minecraft:empty",Silent:true}

kill @s

data modify entity @s {} merge from storage util:_ data
execute unless data storage util:_ data.Silent run data remove entity @s Silent
