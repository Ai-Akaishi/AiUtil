#> util:pass_through/calc/x
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

execute unless data storage util:_ direction{Y:0} run scoreboard players operation Y AiUtil -= X AiUtil
execute unless data storage util:_ direction{Z:0} run scoreboard players operation Z AiUtil -= X AiUtil
scoreboard players operation X AiUtil = DX AiUtil

## 移動方向を保存
execute if data storage util:_ signs{X:1} unless data storage util:_ {count:0} run data modify storage util:_ out append value "+X"
execute if data storage util:_ signs{X:-1} unless data storage util:_ {count:0} run data modify storage util:_ out append value "-X"
## カウントを１減らす
execute store result storage util:_ count int 0.9999999999 run data get storage util:_ count
