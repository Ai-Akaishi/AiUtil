#> util:distance/21
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 2097152m以上離れていたら2097152を記録して、2097152m距離を詰めてから次の精度で確認する
execute if entity @s[distance=2097152..] run scoreboard players add _ AiUtil 2097152
execute if entity @s[distance=2097152..] positioned ^ ^ ^2097152 run function util:distance/20
### 2097152m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=2097152..] run function util:distance/20
