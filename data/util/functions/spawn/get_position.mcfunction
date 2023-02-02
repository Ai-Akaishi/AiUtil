#> util:spawn/get_position
# 現在のコマンドスタックソースの座標と向きを取得する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tp @s ~ ~ ~ ~ ~
data modify storage util:_ pos set from entity @s Pos
data modify storage util:_ rotation set from entity @s Rotation
kill @s
