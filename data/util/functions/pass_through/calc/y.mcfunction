#> util:pass_through/calc/y
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

execute unless data storage util:_ direction{X:0} run scoreboard players operation X AiUtil -= Y AiUtil
execute unless data storage util:_ direction{Z:0} run scoreboard players operation Z AiUtil -= Y AiUtil
scoreboard players operation Y AiUtil = DY AiUtil

## 移動方向を保存
execute if data storage util:_ signs{Y:1} unless data storage util:_ {count:0} run data modify storage util:_ out append value "+Y"
execute if data storage util:_ signs{Y:-1} unless data storage util:_ {count:0} run data modify storage util:_ out append value "-Y"
## カウントを１減らす
execute store result storage util:_ count int 0.9999999999 run data get storage util:_ count
