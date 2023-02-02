#> util:entity_data/tag/reverse
# 再帰的にUUIDを削除
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ Passengers append from storage util:_ PassengersFixed[-1]
data remove storage util:_ PassengersFixed[-1]
execute if data storage util:_ PassengersFixed[-1] run function util:entity_data/tag/reverse
