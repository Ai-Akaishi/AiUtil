#> util:entity_data/
# エンティティのIDを取得します。
# エンティティを使用しているので、プレイヤーのいる場所からなど
# 読み込まれているチャンクから呼び出してください。
## 入力: なし(nothing)
## 出力: entity data(nbt) => storage util: out
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

function util:entity_data/seek
data modify storage util: out set from storage util:_ EntityTag
