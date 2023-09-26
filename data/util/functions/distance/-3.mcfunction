#> util:distance/-3
## -0.01 * 2^3
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 0.08m以上離れていたら0.08を記録して、0.08m距離を詰めてから次の精度で確認する
execute if entity @s[distance=0.08..] run scoreboard players add _ AiUtil 8
execute if entity @s[distance=0.08..] positioned ^ ^ ^0.08 run function util:distance/-2
### 0.08m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=0.08..] run function util:distance/-2
