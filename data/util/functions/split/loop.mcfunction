#> util:split/loop
# 文字を分割します
## 入力: 文字列(string) => storage util: in
## 出力: 文字リスト([string,...]) => storage util: out
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util: out append value ""
data modify storage util: out[-1] set string storage util:_ in 0 1
data modify storage util:_ in set string storage util:_ in 1

## 残りの文字数を確認
execute store result storage util:_ _ int 1 run data get storage util:_ in
execute unless data storage util:_ {_:0} run function util:split/loop
