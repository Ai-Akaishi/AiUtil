#> util:distance/-0
## -0.01 * 2^0
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 0.01m以上離れていたら0.01を記録して、0.01m距離を詰めてから次の精度で確認する
execute if entity @s[distance=0.01..] run scoreboard players add _ AiUtil 1
