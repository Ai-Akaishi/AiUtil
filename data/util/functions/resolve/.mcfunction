#> util:resolve/
# RawJsonコンポーネントをresolveします。
# エンティティを使用しているので、プレイヤーのいる場所からなど
# 読み込まれているチャンクから呼び出してください。
## 入力: Jsonコンポーネント => storage util: in
## 出力: ResolveされたJsonコンポーネント => storage util: out
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 範囲外にテレポートしても、自分自身は取得できる、ただしkillは元の位置に戻ってから！
summon minecraft:item_frame ~ ~500 ~ {Invisible:true,Fixed:true,Tags:[AiUtil],Item:{id:"minecraft:music_disc_13",Count:1b}}
execute positioned ~ ~500 ~ align xyz run item modify entity @e[dx=0,type=item_frame,tag=AiUtil,limit=1] container.0 util:resolve
execute positioned ~ ~500 ~ align xyz as @e[dx=0,type=item_frame,tag=AiUtil,limit=1] at @s run function util:resolve/get
