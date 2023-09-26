#> util:distance/15
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 32768m以上離れていたら32768を記録して、32768m距離を詰めてから次の精度で確認する
execute if entity @s[distance=32768..] run scoreboard players add _ AiUtil 32768
execute if entity @s[distance=32768..] positioned ^ ^ ^32768 run function util:distance/14
### 32768m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=32768..] run function util:distance/14
