#> util:pass_through/calc/z
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

execute unless data storage util:_ direction{X:0} run scoreboard players operation X AiUtil -= Z AiUtil
execute unless data storage util:_ direction{Y:0} run scoreboard players operation Y AiUtil -= Z AiUtil
scoreboard players operation Z AiUtil = DZ AiUtil

## 移動方向を保存
execute if data storage util:_ signs{Z:1} unless data storage util:_ {count:0} run data modify storage util:_ out append value "+Z"
execute if data storage util:_ signs{Z:-1} unless data storage util:_ {count:0} run data modify storage util:_ out append value "-Z"
## カウントを１減らす
execute store result storage util:_ count int 0.9999999999 run data get storage util:_ count
