#> util:spawn/set_spawner
# 指定したデータのエンティティを召喚する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### スポナーにデータを入れる
data modify entity @s {} merge from storage util:_ SpawnerData
tag @s remove AiUtilSpawnerInit
