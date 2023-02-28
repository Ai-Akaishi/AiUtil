#> util:display/set/
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ data set value {transformation:{translation:[0f,0f,0f],scale:[1f,1f,1f]},Tags:[]}
execute if data storage util: in.tag run data modify storage util:_ data.Tags append from storage util: in.tag
data modify storage util:_ data.transformation.scale[] set from storage util:_ scale

## ディスプレイ召喚
data modify storage util:_ z set from storage util: in.z
scoreboard players set Z AiUtil 0
function util:display/set/z

# 最初にz
# 次にx
# 最後にy

# y -> x -> z

