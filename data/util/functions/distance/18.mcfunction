#> util:distance/18
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 262144m以上離れていたら262144を記録して、262144m距離を詰めてから次の精度で確認する
execute if entity @s[distance=262144..] run scoreboard players add _ AiUtil 262144
execute if entity @s[distance=262144..] positioned ^ ^ ^262144 run function util:distance/17
### 262144m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=262144..] run function util:distance/17
