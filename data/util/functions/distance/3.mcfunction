#> util:distance/3
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 8m以上離れていたら8を記録して、8m距離を詰めてから次の精度で確認する
execute if entity @s[distance=8..] run scoreboard players add _ AiUtil 8
execute if entity @s[distance=8..] positioned ^ ^ ^8 run function util:distance/2
### 8m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=8..] run function util:distance/2
