#> util:distance/19
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 524288m以上離れていたら524288を記録して、524288m距離を詰めてから次の精度で確認する
execute if entity @s[distance=524288..] run scoreboard players add _ AiUtil 524288
execute if entity @s[distance=524288..] positioned ^ ^ ^524288 run function util:distance/18
### 524288m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=524288..] run function util:distance/18
