#> util:distance/1
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 2m以上離れていたら2を記録して、2m距離を詰めてから次の精度で確認する
execute if entity @s[distance=2..] run scoreboard players add _ AiUtil 2
execute if entity @s[distance=2..] positioned ^ ^ ^2 run function util:distance/0
### 2m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=2..] run function util:distance/0
