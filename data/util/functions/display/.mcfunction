#> util:display/
# block_statesを元にディスプレイで表示する
## 入力: display data({scale:float,tag:string,block_states:[[[{},...],...],...])
## 出力: なし(nothing)
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

# data modify storage util: in set value {scale:0.125f,tag:"Miniature"}

## 隙間ができないようにスケールを丸める
execute store result score _ AiUtil store result storage util:_ scale float 0.0001 run data get storage util: in.scale 10000

## block_statesをコピー
data modify storage util:_ block_states set from storage util: in.block_states

## ディスプレイを表示する
function util:display/set/
