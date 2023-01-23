#> util:datetime/6
# 月を取得する
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

# 6月を超えている？
execute if score Day AiUtil matches 30.. run scoreboard players add Month AiUtil 1
execute if score Day AiUtil matches 30.. run scoreboard players remove Day AiUtil 30
# 7月以上なら7月チェック
execute if score Month AiUtil matches 7.. run function util:datetime/month/7
