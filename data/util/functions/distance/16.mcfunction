#> util:distance/16
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 65536m以上離れていたら65536を記録して、65536m距離を詰めてから次の精度で確認する
execute if entity @s[distance=65536..] run scoreboard players add _ AiUtil 65536
execute if entity @s[distance=65536..] positioned ^ ^ ^65536 run function util:distance/15
### 65536m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=65536..] run function util:distance/15
