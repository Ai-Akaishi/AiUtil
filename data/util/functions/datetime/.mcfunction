#> util:datetime/
# 現在日時を取得する
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## 日付と時間をそれぞれ取得している？わけではなくて～
## 1970年1月1日00:00:00 から経過秒数

## 結果をリセット
data modify storage util: out set value {year:0,month:0,day:0,hour:0,minute:0,second:0,weekday:0}

## ワールド読み込みからの経過秒数を取得
execute store result score Offset AiUtil run time query gametime
execute store result score _ AiUtil run data get storage util:_ load_game_time
scoreboard players operation Offset AiUtil -= _ AiUtil
scoreboard players set _ AiUtil 20
scoreboard players operation Offset AiUtil /= _ AiUtil
## 現在時刻を取得
execute store result score Time AiUtil run data get storage util:_ load_time
scoreboard players operation Time AiUtil += Offset AiUtil
# 2000年1月1日 00:00:00 946652400
scoreboard players remove Time AiUtil 946652400

scoreboard players set #4 AiUtil 4
scoreboard players set #60 AiUtil 60
scoreboard players set #24 AiUtil 24
scoreboard players set #1000 AiUtil 1000

# 秒
scoreboard players operation _ AiUtil = Time AiUtil
execute store result storage util: out.second int 1 run scoreboard players operation _ AiUtil %= #60 AiUtil
scoreboard players operation Time AiUtil /= #60 AiUtil
# 分
scoreboard players operation _ AiUtil = Time AiUtil
execute store result storage util: out.minute int 1 run scoreboard players operation _ AiUtil %= #60 AiUtil
scoreboard players operation Time AiUtil /= #60 AiUtil
# 時
scoreboard players operation _ AiUtil = Time AiUtil
execute store result storage util: out.hour int 1 run scoreboard players operation _ AiUtil %= #24 AiUtil
scoreboard players operation Time AiUtil /= #24 AiUtil

scoreboard players operation Day AiUtil = Time AiUtil
scoreboard players remove Day AiUtil 2
scoreboard players set _ AiUtil 7
execute store result storage util: out.weekday int 1 run scoreboard players operation Day AiUtil %= _ AiUtil

#4years
scoreboard players set _ AiUtil 1461
scoreboard players operation Day AiUtil = Time AiUtil
scoreboard players operation Day AiUtil %= _ AiUtil
scoreboard players operation Time AiUtil /= _ AiUtil
scoreboard players operation Year AiUtil = Time AiUtil
scoreboard players operation Year AiUtil *= #4 AiUtil

execute if score Day AiUtil matches 1096.. run scoreboard players add Year AiUtil 3
execute if score Day AiUtil matches 1096.. run scoreboard players remove Day AiUtil 1096
execute if score Day AiUtil matches 731.. run scoreboard players add Year AiUtil 2
execute if score Day AiUtil matches 731.. run scoreboard players remove Day AiUtil 731
execute if score Day AiUtil matches 366.. run scoreboard players add Year AiUtil 1
execute if score Day AiUtil matches 366.. run scoreboard players remove Day AiUtil 366

scoreboard players set Month AiUtil 1
function util:datetime/month/1

execute store result storage util: out.day int 1 run scoreboard players add Day AiUtil 1
execute store result storage util: out.month int 1 run scoreboard players get Month AiUtil
execute store result storage util: out.year int 1 run scoreboard players add Year AiUtil 2000

scoreboard players reset Day AiUtil
scoreboard players reset Month AiUtil
scoreboard players reset Year AiUtil

scoreboard players reset #4 AiUtil
scoreboard players reset #60 AiUtil
scoreboard players reset #24 AiUtil
scoreboard players reset #1000 AiUtil
