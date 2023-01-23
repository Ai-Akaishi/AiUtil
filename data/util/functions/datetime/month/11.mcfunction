#> util:datetime/11
# 月を取得する
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

# 11月を超えている？
execute if score Day AiUtil matches 30.. run scoreboard players add Month AiUtil 1
execute if score Day AiUtil matches 30.. run scoreboard players remove Day AiUtil 30
