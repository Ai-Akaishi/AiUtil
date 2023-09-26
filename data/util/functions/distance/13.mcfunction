#> util:distance/13
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 8192m以上離れていたら8192を記録して、8192m距離を詰めてから次の精度で確認する
execute if entity @s[distance=8192..] run scoreboard players add _ AiUtil 8192
execute if entity @s[distance=8192..] positioned ^ ^ ^8192 run function util:distance/12
### 8192m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=8192..] run function util:distance/12
