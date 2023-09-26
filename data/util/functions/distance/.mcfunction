#> util:distance/
# 実行地点と実行者の距離を求めます。単位はmです。方角によって誤差が生じることがあります。
## 入力: なし(nothing) => storage util: in
## 出力: 距離(double) => storage util: out
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 結果を入れるスコアを０にしておく
scoreboard players set _ AiUtil 0

### ほんのちょっぴり離れておく(ぴったりの時用)
execute facing entity @s feet positioned ^ ^ ^-0.00000001 run function util:distance/23

execute store result storage util: out double 0.01 run scoreboard players get _ AiUtil
