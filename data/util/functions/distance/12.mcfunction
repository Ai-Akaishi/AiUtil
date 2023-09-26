#> util:distance/12
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 4096m以上離れていたら4096を記録して、4096m距離を詰めてから次の精度で確認する
execute if entity @s[distance=4096..] run scoreboard players add _ AiUtil 4096
execute if entity @s[distance=4096..] positioned ^ ^ ^4096 run function util:distance/11
### 4096m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=4096..] run function util:distance/11
