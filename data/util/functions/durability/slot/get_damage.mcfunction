#> util:durability/slot/get_damage
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## 耐久なしアイテム対策でダメージをリセット
data remove storage util:_ damage
## アイテム名がminecraft:から始まっている場合は削除して分岐
data remove storage util:_ _
data modify storage util:_ _ set string storage util:_ item 0 10
execute if data storage util:_ {_:"minecraft:"} run data modify storage util:_ item set string storage util:_ item 10

execute if data storage util:_ {item:"netherite_sword"} run function util:durability/netherite/tool
execute if data storage util:_ {item:"netherite_shovel"} run function util:durability/netherite/tool
execute if data storage util:_ {item:"netherite_pickaxe"} run function util:durability/netherite/tool
execute if data storage util:_ {item:"netherite_axe"} run function util:durability/netherite/tool
execute if data storage util:_ {item:"netherite_hoe"} run function util:durability/netherite/tool
execute if data storage util:_ {item:"netherite_helmet"} run function util:durability/netherite/head
execute if data storage util:_ {item:"netherite_chestplate"} run function util:durability/netherite/chest
execute if data storage util:_ {item:"netherite_leggings"} run function util:durability/netherite/legs
execute if data storage util:_ {item:"netherite_boots"} run function util:durability/netherite/feet

execute if data storage util:_ {item:"diamond_sword"} run function util:durability/diamond/tool
execute if data storage util:_ {item:"diamond_shovel"} run function util:durability/diamond/tool
execute if data storage util:_ {item:"diamond_pickaxe"} run function util:durability/diamond/tool
execute if data storage util:_ {item:"diamond_axe"} run function util:durability/diamond/tool
execute if data storage util:_ {item:"diamond_hoe"} run function util:durability/diamond/tool
execute if data storage util:_ {item:"diamond_helmet"} run function util:durability/diamond/head
execute if data storage util:_ {item:"diamond_chestplate"} run function util:durability/diamond/chest
execute if data storage util:_ {item:"diamond_leggings"} run function util:durability/diamond/legs
execute if data storage util:_ {item:"diamond_boots"} run function util:durability/diamond/feet

execute if data storage util:_ {item:"golden_sword"} run function util:durability/gold/tool
execute if data storage util:_ {item:"golden_shovel"} run function util:durability/gold/tool
execute if data storage util:_ {item:"golden_pickaxe"} run function util:durability/gold/tool
execute if data storage util:_ {item:"golden_axe"} run function util:durability/gold/tool
execute if data storage util:_ {item:"golden_hoe"} run function util:durability/gold/tool
execute if data storage util:_ {item:"golden_helmet"} run function util:durability/gold/head
execute if data storage util:_ {item:"golden_chestplate"} run function util:durability/gold/chest
execute if data storage util:_ {item:"golden_leggings"} run function util:durability/gold/legs
execute if data storage util:_ {item:"golden_boots"} run function util:durability/gold/feet

execute if data storage util:_ {item:"iron_sword"} run function util:durability/iron/tool
execute if data storage util:_ {item:"iron_shovel"} run function util:durability/iron/tool
execute if data storage util:_ {item:"iron_pickaxe"} run function util:durability/iron/tool
execute if data storage util:_ {item:"iron_axe"} run function util:durability/iron/tool
execute if data storage util:_ {item:"iron_hoe"} run function util:durability/iron/tool
execute if data storage util:_ {item:"iron_helmet"} run function util:durability/iron/head
execute if data storage util:_ {item:"iron_chestplate"} run function util:durability/iron/chest
execute if data storage util:_ {item:"iron_leggings"} run function util:durability/iron/legs
execute if data storage util:_ {item:"iron_boots"} run function util:durability/iron/feet
execute if data storage util:_ {item:"chainmail_helmet"} run function util:durability/iron/head
execute if data storage util:_ {item:"chainmail_chestplate"} run function util:durability/iron/chest
execute if data storage util:_ {item:"chainmail_leggings"} run function util:durability/iron/legs
execute if data storage util:_ {item:"chainmail_boots"} run function util:durability/iron/feet

execute if data storage util:_ {item:"stone_sword"} run function util:durability/stone/tool
execute if data storage util:_ {item:"stone_shovel"} run function util:durability/stone/tool
execute if data storage util:_ {item:"stone_pickaxe"} run function util:durability/stone/tool
execute if data storage util:_ {item:"stone_axe"} run function util:durability/stone/tool
execute if data storage util:_ {item:"stone_hoe"} run function util:durability/stone/tool

execute if data storage util:_ {item:"wooden_sword"} run function util:durability/wood/tool
execute if data storage util:_ {item:"wooden_shovel"} run function util:durability/wood/tool
execute if data storage util:_ {item:"wooden_pickaxe"} run function util:durability/wood/tool
execute if data storage util:_ {item:"wooden_axe"} run function util:durability/wood/tool
execute if data storage util:_ {item:"wooden_hoe"} run function util:durability/wood/tool

execute if data storage util:_ {item:"leather_helmet"} run function util:durability/leather/head
execute if data storage util:_ {item:"leather_chestplate"} run function util:durability/leather/chest
execute if data storage util:_ {item:"leather_leggings"} run function util:durability/leather/legs
execute if data storage util:_ {item:"leather_boots"} run function util:durability/leather/feet

execute if data storage util:_ {item:"turtle_helmet"} run function util:durability/turtle/head

execute if data storage util:_ {item:"fishing_rod"} run function util:durability/turtle/head

execute if data storage util:_ {item:"fishing_rod"} run function util:durability/rod/fishing
execute if data storage util:_ {item:"carrot_on_a_stick"} run function util:durability/rod/carrot
execute if data storage util:_ {item:"warped_fungus_on_a_stick"} run function util:durability/rod/warped

execute if data storage util:_ {item:"trident"} run function util:durability/others/trident
execute if data storage util:_ {item:"shield"} run function util:durability/others/shield
execute if data storage util:_ {item:"bow"} run function util:durability/others/bow
execute if data storage util:_ {item:"crossbow"} run function util:durability/others/crossbow

execute if data storage util:_ {item:"flint_and_steel"} run function util:durability/others/flint
execute if data storage util:_ {item:"shears"} run function util:durability/others/shears
execute if data storage util:_ {item:"elytra"} run function util:durability/others/elytra
