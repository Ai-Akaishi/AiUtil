#> util:distance/-6
## -0.01 * 2^6
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players set __ AiUtil 100
scoreboard players operation _ AiUtil *= __ AiUtil

### 0.64m以上離れていたら0.64を記録して、0.64m距離を詰めてから次の精度で確認する
execute if entity @s[distance=0.64..] run scoreboard players add _ AiUtil 64
execute if entity @s[distance=0.64..] positioned ^ ^ ^0.64 run function util:distance/-5
### 0.64m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=0.64..] run function util:distance/-5
