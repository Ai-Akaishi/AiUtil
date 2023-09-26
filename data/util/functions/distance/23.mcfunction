#> util:distance/23
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 8388608m以上離れていたら8388608を記録して、8388608m距離を詰めてから次の精度で確認する
execute if entity @s[distance=8388608..] run scoreboard players add _ AiUtil 8388608
execute if entity @s[distance=8388608..] positioned ^ ^ ^8388608 run function util:distance/22
### 8388608m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=8388608..] run function util:distance/22
