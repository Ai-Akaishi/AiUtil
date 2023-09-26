#> util:distance/2
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 4m以上離れていたら4を記録して、4m距離を詰めてから次の精度で確認する
execute if entity @s[distance=4..] run scoreboard players add _ AiUtil 4
execute if entity @s[distance=4..] positioned ^ ^ ^4 run function util:distance/1
### 4m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=4..] run function util:distance/1
