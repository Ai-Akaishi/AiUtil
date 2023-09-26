#> util:distance/11
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 2048m以上離れていたら2048を記録して、2048m距離を詰めてから次の精度で確認する
execute if entity @s[distance=2048..] run scoreboard players add _ AiUtil 2048
execute if entity @s[distance=2048..] positioned ^ ^ ^2048 run function util:distance/10
### 2048m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=2048..] run function util:distance/10
