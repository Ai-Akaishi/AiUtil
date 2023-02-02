#> util:resolve/get
## 入力: storage => storage util: in
## 出力: RawJson => storage util: out
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util: out set from entity @s Item.tag.display.Name
kill @s
