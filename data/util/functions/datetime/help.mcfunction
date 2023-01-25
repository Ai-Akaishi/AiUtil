#> util:datetime/help
# #util:datetimeのヘルプを表示します。
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"translate":" === function #util:%s ===","color":"aqua","with":["datetime"]}
tellraw @s "現在の日時を取得します。"
tellraw @s "シングルモード(LAN非公開の場合)では時刻がずれる可能性があります。"
tellraw @s "ずれた時刻はreload時に修正されます。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(util: in)  ","color":"gray"},{"text":"なし","bold":true},{"text":"(nothing)","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(util: out)","color":"gray"},{"text":"日時データ","bold":true},{"text":"({year:int,month:int,day:int,hour:int,minute:int,second:int,weekday:int})","color":"gray"}]}
