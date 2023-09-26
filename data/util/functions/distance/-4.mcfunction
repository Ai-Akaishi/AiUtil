#> util:distance/-4
## -0.01 * 2^4
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 0.16m以上離れていたら0.16を記録して、0.16m距離を詰めてから次の精度で確認する
execute if entity @s[distance=0.16..] run scoreboard players add _ AiUtil 16
execute if entity @s[distance=0.16..] positioned ^ ^ ^0.16 run function util:distance/-3
### 0.16m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=0.16..] run function util:distance/-3
