#> util:distance/4
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 16m以上離れていたら16を記録して、16m距離を詰めてから次の精度で確認する
execute if entity @s[distance=16..] run scoreboard players add _ AiUtil 16
execute if entity @s[distance=16..] positioned ^ ^ ^16 run function util:distance/3
### 16m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=16..] run function util:distance/3
