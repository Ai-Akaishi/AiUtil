#> util:durability/slot/31
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## 指定スロットのアイテムに応じてダメージ計算
data modify storage util:_ item set from entity @s Inventory[{Slot:31b}].id
function util:durability/slot/get_damage
## 指定スロットに適用
execute if data storage util:_ damage run item modify entity @s container.31 util:durability
