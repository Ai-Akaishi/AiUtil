#> util:distance/-1
## -0.01 * 2^1
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 0.02m以上離れていたら0.02を記録して、0.02m距離を詰めてから次の精度で確認する
execute if entity @s[distance=0.02..] run scoreboard players add _ AiUtil 2
execute if entity @s[distance=0.02..] positioned ^ ^ ^0.02 run function util:distance/-0
### 0.02m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=0.02..] run function util:distance/-0
