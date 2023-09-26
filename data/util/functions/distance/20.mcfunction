#> util:distance/20
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 1048576m以上離れていたら1048576を記録して、1048576m距離を詰めてから次の精度で確認する
execute if entity @s[distance=1048576..] run scoreboard players add _ AiUtil 1048576
execute if entity @s[distance=1048576..] positioned ^ ^ ^1048576 run function util:distance/19
### 1048576m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=1048576..] run function util:distance/19
