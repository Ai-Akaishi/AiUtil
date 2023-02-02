#> util:entity_id/
# エンティティのIDを取得します。
# エンティティを使用しているので、プレイヤーのいる場所からなど
# 読み込まれているチャンクから呼び出してください。
## 入力: なし(nothing)
## 出力: entity id => storage util: out
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util: in set value '{"selector":"@s"}'
function #util:resolve
## エンティティIDは11文字～ 35文字想定
data modify storage util: in set string storage util: out 109 144
function util:entity_id/11

execute if entity @s[type=player] run data modify storage util: out set value "minecraft:player"
