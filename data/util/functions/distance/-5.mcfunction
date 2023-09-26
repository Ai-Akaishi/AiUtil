#> util:distance/-5
## -0.01 * 2^5
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 0.32m以上離れていたら0.32を記録して、0.32m距離を詰めてから次の精度で確認する
execute if entity @s[distance=0.32..] run scoreboard players add _ AiUtil 32
execute if entity @s[distance=0.32..] positioned ^ ^ ^0.32 run function util:distance/-4
### 0.32m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=0.32..] run function util:distance/-4
