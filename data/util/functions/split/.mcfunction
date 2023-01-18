#> util:split/
# 文字を分割します。
## 入力: 文字列(string) => storage util: in
## 出力: 文字リスト([string,...]) => storage util: out
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ in set from storage util: in
data modify storage util: out set value []

## 残りの文字数を確認
execute store result storage util:_ _ int 1 run data get storage util:_ in
## 文字数が０じゃない場合だけ分割
execute unless data storage util:_ {_:0} run function util:split/loop
