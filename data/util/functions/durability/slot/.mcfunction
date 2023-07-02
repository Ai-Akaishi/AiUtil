#> util:durability/slot/
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## アイテムが存在しないスロット対策にアイテム名は一旦リセット
data remove storage util:_ item

# ホットバー
execute if data storage util:_ {slot:0b} run function util:durability/slot/0
execute if data storage util:_ {slot:1b} run function util:durability/slot/1
execute if data storage util:_ {slot:2b} run function util:durability/slot/2
execute if data storage util:_ {slot:3b} run function util:durability/slot/3
execute if data storage util:_ {slot:4b} run function util:durability/slot/4
execute if data storage util:_ {slot:5b} run function util:durability/slot/5
execute if data storage util:_ {slot:6b} run function util:durability/slot/6
execute if data storage util:_ {slot:7b} run function util:durability/slot/7
execute if data storage util:_ {slot:8b} run function util:durability/slot/8
# インベントリ１列目
execute if data storage util:_ {slot:9b} run function util:durability/slot/9
execute if data storage util:_ {slot:10b} run function util:durability/slot/10
execute if data storage util:_ {slot:11b} run function util:durability/slot/11
execute if data storage util:_ {slot:12b} run function util:durability/slot/12
execute if data storage util:_ {slot:13b} run function util:durability/slot/13
execute if data storage util:_ {slot:14b} run function util:durability/slot/14
execute if data storage util:_ {slot:15b} run function util:durability/slot/15
execute if data storage util:_ {slot:16b} run function util:durability/slot/16
execute if data storage util:_ {slot:17b} run function util:durability/slot/17
# インベントリ２列目
execute if data storage util:_ {slot:18b} run function util:durability/slot/18
execute if data storage util:_ {slot:19b} run function util:durability/slot/19
execute if data storage util:_ {slot:20b} run function util:durability/slot/20
execute if data storage util:_ {slot:21b} run function util:durability/slot/21
execute if data storage util:_ {slot:22b} run function util:durability/slot/22
execute if data storage util:_ {slot:23b} run function util:durability/slot/23
execute if data storage util:_ {slot:24b} run function util:durability/slot/24
execute if data storage util:_ {slot:25b} run function util:durability/slot/25
execute if data storage util:_ {slot:26b} run function util:durability/slot/26
# インベントリ３列目
execute if data storage util:_ {slot:27b} run function util:durability/slot/27
execute if data storage util:_ {slot:28b} run function util:durability/slot/28
execute if data storage util:_ {slot:29b} run function util:durability/slot/29
execute if data storage util:_ {slot:30b} run function util:durability/slot/30
execute if data storage util:_ {slot:31b} run function util:durability/slot/31
execute if data storage util:_ {slot:32b} run function util:durability/slot/32
execute if data storage util:_ {slot:33b} run function util:durability/slot/33
execute if data storage util:_ {slot:34b} run function util:durability/slot/34
execute if data storage util:_ {slot:35b} run function util:durability/slot/35
# 防具
execute if data storage util:_ {slot:100b} run function util:durability/slot/100
execute if data storage util:_ {slot:101b} run function util:durability/slot/101
execute if data storage util:_ {slot:102b} run function util:durability/slot/102
execute if data storage util:_ {slot:103b} run function util:durability/slot/103
# オフハンド
execute if data storage util:_ {slot:-106b} run function util:durability/slot/-106
