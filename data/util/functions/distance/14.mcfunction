#> util:distance/14
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 16384m以上離れていたら16384を記録して、16384m距離を詰めてから次の精度で確認する
execute if entity @s[distance=16384..] run scoreboard players add _ AiUtil 16384
execute if entity @s[distance=16384..] positioned ^ ^ ^16384 run function util:distance/13
### 16384m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=16384..] run function util:distance/13
