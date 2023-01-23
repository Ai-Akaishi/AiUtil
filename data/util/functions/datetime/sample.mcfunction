#> util:datetime/sample
# 現在日時を表示するサンプル
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## 現在日時を取得する
function #util:datetime

data modify storage sample: data set value []

data modify storage sample: data append value []
data modify storage sample: data[-1] append from storage util: out.year
data modify storage sample: data append value ["年"]

data modify storage sample: data append value []
data modify storage sample: data[-1] append from storage util: out.month
data modify storage sample: data append value ["月"]

data modify storage sample: data append value []
data modify storage sample: data[-1] append from storage util: out.day
data modify storage sample: data append value ["日 "]

execute store result score _ AiUtil run data get storage util: out.hour
execute if score _ AiUtil matches ..9 run data modify storage sample: data append value ["0"]
data modify storage sample: data append value []
data modify storage sample: data[-1] append from storage util: out.hour
data modify storage sample: data append value [":"]

execute store result score _ AiUtil run data get storage util: out.minute
execute if score _ AiUtil matches ..9 run data modify storage sample: data append value ["0"]
data modify storage sample: data append value []
data modify storage sample: data[-1] append from storage util: out.minute
data modify storage sample: data append value [":"]

execute store result score _ AiUtil run data get storage util: out.second
execute if score _ AiUtil matches ..9 run data modify storage sample: data append value ["0"]
data modify storage sample: data append value []
data modify storage sample: data[-1] append from storage util: out.second

title @s times 0 200 0
title @s subtitle {"storage":"sample:","nbt":"data[]","separator":"","interpret":true}
title @s title ""
