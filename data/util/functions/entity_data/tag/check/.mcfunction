#> util:entity_data/tag/check/
# 再帰的にUUIDを削除
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 一番後ろが上に何か載せているなら今の状態をスタックして、先に進む
execute if data storage util:_ Passengers[-1].Passengers run function util:entity_data/tag/check/stack

### 確定させる
data modify storage util:_ PassengersFixed append from storage util:_ Passengers[-1]
data remove storage util:_ Passengers[-1]

### まだ確定していないPassengersがあるならループ
execute if data storage util:_ Passengers[-1] run function util:entity_data/tag/check/
