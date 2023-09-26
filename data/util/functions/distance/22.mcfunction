#> util:distance/22
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 4194304m以上離れていたら4194304を記録して、4194304m距離を詰めてから次の精度で確認する
execute if entity @s[distance=4194304..] run scoreboard players add _ AiUtil 4194304
execute if entity @s[distance=4194304..] positioned ^ ^ ^4194304 run function util:distance/21
### 4194304m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=4194304..] run function util:distance/21
