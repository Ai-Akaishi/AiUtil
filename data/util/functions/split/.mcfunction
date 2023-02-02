#> util:split/
# 文字を分割します。
## 入力: 文字列(string) => storage util: in
## 出力: 文字リスト([string,...]) => storage util: out
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ in set from storage util: in
data modify storage util: out set value []

## 残りの文字数を確認
data modify storage util:_ str.all set string storage util: in
execute store result score _ AiUtil run data get storage util:_ str.all

execute if score _ AiUtil matches 1024.. run function util:split/start/1024
execute if score _ AiUtil matches 512.. run function util:split/start/512
execute if score _ AiUtil matches 256.. run function util:split/start/256
execute if score _ AiUtil matches 128.. run function util:split/start/128
execute if score _ AiUtil matches 64.. run function util:split/start/64
execute if score _ AiUtil matches 32.. run function util:split/start/32
execute if score _ AiUtil matches 16.. run function util:split/start/16
execute if score _ AiUtil matches 8.. run function util:split/start/8
execute if score _ AiUtil matches 4.. run function util:split/start/4
execute if score _ AiUtil matches 2.. run function util:split/start/2
execute if score _ AiUtil matches 1.. run function util:split/start/1
