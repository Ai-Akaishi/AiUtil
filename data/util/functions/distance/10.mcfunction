#> util:distance/10
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 1024m以上離れていたら1024を記録して、1024m距離を詰めてから次の精度で確認する
execute if entity @s[distance=1024..] run scoreboard players add _ AiUtil 1024
execute if entity @s[distance=1024..] positioned ^ ^ ^1024 run function util:distance/9
### 1024m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=1024..] run function util:distance/9
