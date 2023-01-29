#> util:datetime/sample
# 現在日時を表示するサンプル
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## 現在日時を取得する
function #util:datetime

data modify storage sample: data set value []

data modify storage sample: data append string storage util: out.year
data modify storage sample: data append value "年"
data modify storage sample: data append string storage util: out.month
data modify storage sample: data append value "月"
data modify storage sample: data append string storage util: out.day
data modify storage sample: data append value "日"

execute if data storage util: out{weekday:0} run data modify storage sample: data append value "㈪"
execute if data storage util: out{weekday:1} run data modify storage sample: data append value "㈫"
execute if data storage util: out{weekday:2} run data modify storage sample: data append value "㈬"
execute if data storage util: out{weekday:3} run data modify storage sample: data append value "㈭"
execute if data storage util: out{weekday:4} run data modify storage sample: data append value "㈮"
execute if data storage util: out{weekday:5} run data modify storage sample: data append value "㈯"
execute if data storage util: out{weekday:6} run data modify storage sample: data append value "㈰"
data modify storage sample: data append value " "

execute store result score _ AiUtil run data get storage util: out.hour
execute if score _ AiUtil matches ..9 run data modify storage sample: data append value "0"
data modify storage sample: data append string storage util: out.hour
data modify storage sample: data append value ":"

execute store result score _ AiUtil run data get storage util: out.minute
execute if score _ AiUtil matches ..9 run data modify storage sample: data append value "0"
data modify storage sample: data append string storage util: out.minute
data modify storage sample: data append value ":"

execute store result score _ AiUtil run data get storage util: out.second
execute if score _ AiUtil matches ..9 run data modify storage sample: data append value "0"
data modify storage sample: data append string storage util: out.second

# data modify storage util:_ name set value '{"storage":"sample:","nbt":"data[]","separator":"","italic":false}'
# execute if data entity @s SelectedItem{id:"minecraft:clock"} run item modify entity @s weapon.mainhand util:set_name_interpret

title @s times 0 200 0
title @s subtitle {"storage":"sample:","nbt":"data[]","separator":""}
title @s title ""
