#> util:entity_data/tag/
# 自身のエンティティデータを取得する
# 自身のPos/Rotation/UUIDと、全てのPassengersのUUIDは含まれない
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### IDを取得
function #util:entity_id

### 自分のデータをストレージに入れちゃう！！
data modify storage util:_ EntityTag set from entity @s
data remove storage util:_ EntityTag.UUID
data remove storage util:_ EntityTag.Pos
data remove storage util:_ EntityTag.Rotation
data modify storage util:_ EntityTag.id set from storage util: out

data modify storage util:_ PassengersStack set value []
### この辺りがセット
data remove storage util:_ EntityTag.Passengers[].UUID
data modify storage util:_ PassengersFixed set value []
data remove storage util:_ Passengers
data modify storage util:_ Passengers set from storage util:_ EntityTag.Passengers

execute if data storage util:_ Passengers run function util:entity_data/tag/check/

### FixedをPassengersに戻す
data modify storage util:_ Passengers set value []
execute if data storage util:_ PassengersFixed[-1] run function util:entity_data/tag/reverse

### 本来のエンティティの上に戻す
execute if data storage util:_ EntityTag.Passengers run data modify storage util:_ EntityTag.Passengers set from storage util:_ Passengers
