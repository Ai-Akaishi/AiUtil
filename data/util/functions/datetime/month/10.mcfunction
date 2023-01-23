#> util:datetime/10
# 月を取得する
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

# 10月を超えている？
execute if score Day AiUtil matches 31.. run scoreboard players add Month AiUtil 1
execute if score Day AiUtil matches 31.. run scoreboard players remove Day AiUtil 31
# 11月以上なら11月チェック
execute if score Month AiUtil matches 11.. run function util:datetime/month/11
