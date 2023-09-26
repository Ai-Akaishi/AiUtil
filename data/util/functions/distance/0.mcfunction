#> util:distance/0
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 1m以上離れていたら1を記録して、1m距離を詰めてから次の精度で確認する
execute if entity @s[distance=1..] run scoreboard players add _ AiUtil 1
execute if entity @s[distance=1..] positioned ^ ^ ^1 run function util:distance/-6
### 1m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=1..] run function util:distance/-6
