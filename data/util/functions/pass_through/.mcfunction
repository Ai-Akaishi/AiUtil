#> util:pass_through/
# 通過領域の移動方向を求めます
## 入力: 移動ブロック数(int) => storage util: in
## 出力: 移動方向のリスト([]) => storage util: out
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## 視線元の場所 4桁
## 視線の方向 4桁
execute positioned ^0.00005 ^0.00005 ^0.00005 summon minecraft:marker run function util:pass_through/get_formula

## 方向の符号を取得
data modify storage util:_ signs set value {X:1,Y:1,Z:1}
data modify storage util:_ _ set string storage util:_ direction[0] 0 1
execute if data storage util:_ {_:"-"} run data modify storage util:_ signs.X set value -1
data modify storage util:_ _ set string storage util:_ direction[1] 0 1
execute if data storage util:_ {_:"-"} run data modify storage util:_ signs.Y set value -1
data modify storage util:_ _ set string storage util:_ direction[2] 0 1
execute if data storage util:_ {_:"-"} run data modify storage util:_ signs.Z set value -1

## 方向の絶対値を取得
data modify storage util:_ _ set value {X:0,Y:0,Z:0}
execute store result storage util:_ _.X int 1 run data get storage util:_ direction[0] 10000
execute if data storage util:_ signs{X:-1} store result storage util:_ _.X int 1 run data get storage util:_ direction[0] -10000
execute store result storage util:_ _.Y int 1 run data get storage util:_ direction[1] 10000
execute if data storage util:_ signs{Y:-1} store result storage util:_ _.Y int 1 run data get storage util:_ direction[1] -10000
execute store result storage util:_ _.Z int 1 run data get storage util:_ direction[2] 10000
execute if data storage util:_ signs{Z:-1} store result storage util:_ _.Z int 1 run data get storage util:_ direction[2] -10000
data modify storage util:_ direction set from storage util:_ _

## 座標の初期値を取得
scoreboard players set _ AiUtil 10000
execute if data storage util:_ signs{X:-1} store result score X AiUtil run data get storage util:_ pos[0] 10000
execute if data storage util:_ signs{X:1} store result score X AiUtil run data get storage util:_ pos[0] -10000
scoreboard players operation X AiUtil %= _ AiUtil
execute if data storage util:_ signs{Y:-1} store result score Y AiUtil run data get storage util:_ pos[1] 10000
execute if data storage util:_ signs{Y:1} store result score Y AiUtil run data get storage util:_ pos[1] -10000
scoreboard players operation Y AiUtil %= _ AiUtil
execute if data storage util:_ signs{Z:-1} store result score Z AiUtil run data get storage util:_ pos[2] 10000
execute if data storage util:_ signs{Z:1} store result score Z AiUtil run data get storage util:_ pos[2] -10000
scoreboard players operation Z AiUtil %= _ AiUtil

## 追いかけっこの１つ分
## 0の要素は∞扱いにする
## 掛け算するときは1扱い
execute store result score _ AiUtil run data get storage util:_ direction.Z
execute if data storage util:_ direction{Z:0} run scoreboard players set _ AiUtil 1
execute store result score DX AiUtil run data get storage util:_ direction.Y
execute if data storage util:_ direction{Y:0} run scoreboard players set DX AiUtil 1
scoreboard players operation DX AiUtil *= _ AiUtil

execute store result score DY AiUtil run data get storage util:_ direction.X
execute if data storage util:_ direction{X:0} run scoreboard players set DY AiUtil 1
scoreboard players operation DY AiUtil *= _ AiUtil

execute store result score DZ AiUtil run data get storage util:_ direction.X
execute if data storage util:_ direction{X:0} run scoreboard players set DZ AiUtil 1
execute store result score _ AiUtil run data get storage util:_ direction.Y
execute if data storage util:_ direction{Y:0} run scoreboard players set _ AiUtil 1
scoreboard players operation DZ AiUtil *= _ AiUtil

## 追いかけっこの現在地を設定
scoreboard players set _ AiUtil 10000
# X
scoreboard players operation D1 AiUtil = DX AiUtil
scoreboard players operation D1 AiUtil /= _ AiUtil
scoreboard players operation D2 AiUtil = DX AiUtil
scoreboard players operation D2 AiUtil %= _ AiUtil
scoreboard players operation D1 AiUtil *= X AiUtil
scoreboard players operation D2 AiUtil *= X AiUtil
scoreboard players operation D2 AiUtil /= _ AiUtil
execute store result score X AiUtil run scoreboard players operation D1 AiUtil += D2 AiUtil
execute if data storage util:_ direction{X:0} run scoreboard players set X AiUtil 2147483647
# Y
scoreboard players operation D1 AiUtil = DY AiUtil
scoreboard players operation D1 AiUtil /= _ AiUtil
scoreboard players operation D2 AiUtil = DY AiUtil
scoreboard players operation D2 AiUtil %= _ AiUtil
scoreboard players operation D1 AiUtil *= Y AiUtil
scoreboard players operation D2 AiUtil *= Y AiUtil
scoreboard players operation D2 AiUtil /= _ AiUtil
execute store result score Y AiUtil run scoreboard players operation D1 AiUtil += D2 AiUtil
execute if data storage util:_ direction{Y:0} run scoreboard players set Y AiUtil 2147483647
# Z
scoreboard players operation D1 AiUtil = DZ AiUtil
scoreboard players operation D1 AiUtil /= _ AiUtil
scoreboard players operation D2 AiUtil = DZ AiUtil
scoreboard players operation D2 AiUtil %= _ AiUtil
scoreboard players operation D1 AiUtil *= Z AiUtil
scoreboard players operation D2 AiUtil *= Z AiUtil
scoreboard players operation D2 AiUtil /= _ AiUtil
execute store result score Z AiUtil run scoreboard players operation D1 AiUtil += D2 AiUtil
execute if data storage util:_ direction{Z:0} run scoreboard players set Z AiUtil 2147483647

## 求める量を保存しておく
data modify storage util:_ count set from storage util: in
## 繰り返して求めるよ
data modify storage util:_ out set value []
execute unless data storage util:_ {count:0} run function util:pass_through/calc/

## 反転
data modify storage util: out set value []
execute if data storage util:_ out[0] run function util:pass_through/reverse

## スコアボード削除
scoreboard players reset X AiUtil
scoreboard players reset Y AiUtil
scoreboard players reset Z AiUtil
scoreboard players reset DX AiUtil
scoreboard players reset DY AiUtil
scoreboard players reset DZ AiUtil
scoreboard players reset D1 AiUtil
scoreboard players reset D2 AiUtil
