#> util:distance/17
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 131072m以上離れていたら131072を記録して、131072m距離を詰めてから次の精度で確認する
execute if entity @s[distance=131072..] run scoreboard players add _ AiUtil 131072
execute if entity @s[distance=131072..] positioned ^ ^ ^131072 run function util:distance/16
### 131072m以上離れていなかったら、その場所で次の精度で確認する
execute unless entity @s[distance=131072..] run function util:distance/16
