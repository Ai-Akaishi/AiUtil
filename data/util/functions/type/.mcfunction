#> util:type
# 入力データの型を取得します
## 入力: 何でも(any) => storage util: in
## 出力: 型の名前(string) => storage util: out
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util: out set value "unknown"

data modify storage util:_ _ set value [[0b],[0s],[0],[0L],[0f],[0d],[""],[[]],[{}],[[B;]],[[I;]],[[L;]]]
data modify storage util:_ _[] append from storage util: in

execute if data storage util:_ _[0][1] run data modify storage util: out set value "byte"
execute if data storage util:_ _[1][1] run data modify storage util: out set value "short"
execute if data storage util:_ _[2][1] run data modify storage util: out set value "int"
execute if data storage util:_ _[3][1] run data modify storage util: out set value "long"
execute if data storage util:_ _[4][1] run data modify storage util: out set value "float"
execute if data storage util:_ _[5][1] run data modify storage util: out set value "double"
execute if data storage util:_ _[6][1] run data modify storage util: out set value "string"
execute if data storage util:_ _[7][1] run data modify storage util: out set value "list"
execute if data storage util:_ _[8][1] run data modify storage util: out set value "compound"
execute if data storage util:_ _[9][1] run data modify storage util: out set value "byte_array"
execute if data storage util:_ _[10][1] run data modify storage util: out set value "int_array"
execute if data storage util:_ _[11][1] run data modify storage util: out set value "long_array"
