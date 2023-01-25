#> util:settings/default
# AiUtilで使う場所などで設定されていないものを初期状態にする
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

# advanced機能実行地点
execute unless data storage util: settings.at run data modify storage util: settings.at set value {Pos:[0d,-64d,0d],Rotation:[0f,0f],Dimension:"minecraft:overworld"}
# advanced機能チェック用プレイヤーヘッド
execute unless data storage util: settings.unused_player_head run data modify storage util: settings.unused_player_head set value "MHF_CoconutG"
