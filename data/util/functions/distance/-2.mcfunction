#> util:distance/-2
## -0.01 * 2^2
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 0.04m以上離れていたら0.04を記録して、0.04m距離を詰めてから次の精度で確認する
execute if entity @s[distance=0.04..] run scoreboard players add _ AiUtil 4
execute if entity @s[distance=0.04..] positioned ^ ^ ^0.04 run function util:distance/-1
### 0.04m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=0.04..] run function util:distance/-1
