#> util:entity_data/seek
## 一番下のエンティティまで移動してデータ取得
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ _ set value false
execute on vehicle run data modify storage util:_ _ set value true
execute unless data storage util:_ {_:true} run function util:entity_data/tag/
execute if data storage util:_ {_:true} on vehicle run function util:entity_data/seek
