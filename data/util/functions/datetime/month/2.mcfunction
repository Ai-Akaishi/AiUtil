#> util:datetime/2
# 月を取得する
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

# 2月を超えている？
scoreboard players operation _ AiUtil = Year AiUtil
scoreboard players operation _ AiUtil %= #4 AiUtil
execute if score _ AiUtil matches 0 run scoreboard players set _ AiUtil 29
execute if score _ AiUtil matches ..3 run scoreboard players set _ AiUtil 28
execute if score Day AiUtil >= _ AiUtil run scoreboard players add Month AiUtil 1
execute if score Day AiUtil >= _ AiUtil run scoreboard players operation Day AiUtil -= _ AiUtil
# 3月以上なら3月チェック
execute if score Month AiUtil matches 3.. run function util:datetime/month/3
