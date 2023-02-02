#> util:entity_data/tag/check/stack
# 再帰的にUUIDを削除
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 今の状態を保存
data modify storage util:_ PassengersStack append value {}
data modify storage util:_ PassengersStack[-1].Passengers set from storage util:_ Passengers
data modify storage util:_ PassengersStack[-1].PassengersFixed set from storage util:_ PassengersFixed

### 調べたいPassengersに切り替え
data remove storage util:_ Passengers[-1].Passengers[].UUID
data modify storage util:_ PassengersFixed set value []
data modify storage util:_ Passengers set from storage util:_ Passengers[-1].Passengers
function util:entity_data/tag/check/

### FixedをPassengersに戻す
data modify storage util:_ Passengers set value []
function util:entity_data/tag/reverse

### 本来のエンティティの上に戻す
data modify storage util:_ PassengersStack[-1].Passengers[-1].Passengers set from storage util:_ Passengers
### スタックから取り出す
data modify storage util:_ Passengers set from storage util:_ PassengersStack[-1].Passengers
data modify storage util:_ PassengersFixed set from storage util:_ PassengersStack[-1].PassengersFixed
data remove storage util:_ PassengersStack[-1]
