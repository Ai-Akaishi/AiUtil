#> util:datetime/1
# 月を取得する
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

# 1月を超えている？
scoreboard players set Month AiUtil 1
execute if score Day AiUtil matches 31.. run scoreboard players add Month AiUtil 1
execute if score Day AiUtil matches 31.. run scoreboard players remove Day AiUtil 31
# 2月以上なら2月チェック
execute if score Month AiUtil matches 2.. run function util:datetime/month/2
