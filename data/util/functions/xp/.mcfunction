#> util:xp
# 経験値を百分率(%)で設定します。
## 入力: 百分率/percentage(int) => storage util: in
## 出力: なし(nothing)
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## 現在のレベルを記憶する
execute store result storage util: _ int 1 run xp query @s levels

## 経験値の割合を設定する
xp set @s 0 points
xp set @s 51 levels
execute store result score _ AiUtil run data get storage util: in 3
execute if score _ AiUtil matches 256.. run xp add @s 256 points
execute if score _ AiUtil matches 256.. run scoreboard players remove _ AiUtil 256
execute if score _ AiUtil matches 128.. run xp add @s 128 points
execute if score _ AiUtil matches 128.. run scoreboard players remove _ AiUtil 128
execute if score _ AiUtil matches 64.. run xp add @s 64 points
execute if score _ AiUtil matches 64.. run scoreboard players remove _ AiUtil 64
execute if score _ AiUtil matches 32.. run xp add @s 32 points
execute if score _ AiUtil matches 32.. run scoreboard players remove _ AiUtil 32
execute if score _ AiUtil matches 16.. run xp add @s 16 points
execute if score _ AiUtil matches 16.. run scoreboard players remove _ AiUtil 16
execute if score _ AiUtil matches 8.. run xp add @s 8 points
execute if score _ AiUtil matches 8.. run scoreboard players remove _ AiUtil 8
execute if score _ AiUtil matches 4.. run xp add @s 4 points
execute if score _ AiUtil matches 4.. run scoreboard players remove _ AiUtil 4
execute if score _ AiUtil matches 2.. run xp add @s 2 points
execute if score _ AiUtil matches 2.. run scoreboard players remove _ AiUtil 2
execute if score _ AiUtil matches 1.. run xp add @s 1 points
execute if score _ AiUtil matches 1.. run scoreboard players remove _ AiUtil 1

## レベルを戻す
xp set @s 0 levels
execute store result score _ AiUtil run data get storage util: _
execute if score _ AiUtil matches 1073741824.. run xp add @s 1073741824 levels
execute if score _ AiUtil matches 1073741824.. run scoreboard players remove _ AiUtil 1073741824
execute if score _ AiUtil matches 536870912.. run xp add @s 536870912 levels
execute if score _ AiUtil matches 536870912.. run scoreboard players remove _ AiUtil 536870912
execute if score _ AiUtil matches 268435456.. run xp add @s 268435456 levels
execute if score _ AiUtil matches 268435456.. run scoreboard players remove _ AiUtil 268435456
execute if score _ AiUtil matches 134217728.. run xp add @s 134217728 levels
execute if score _ AiUtil matches 134217728.. run scoreboard players remove _ AiUtil 134217728
execute if score _ AiUtil matches 67108864.. run xp add @s 67108864 levels
execute if score _ AiUtil matches 67108864.. run scoreboard players remove _ AiUtil 67108864
execute if score _ AiUtil matches 33554432.. run xp add @s 33554432 levels
execute if score _ AiUtil matches 33554432.. run scoreboard players remove _ AiUtil 33554432
execute if score _ AiUtil matches 16777216.. run xp add @s 16777216 levels
execute if score _ AiUtil matches 16777216.. run scoreboard players remove _ AiUtil 16777216
execute if score _ AiUtil matches 8388608.. run xp add @s 8388608 levels
execute if score _ AiUtil matches 8388608.. run scoreboard players remove _ AiUtil 8388608
execute if score _ AiUtil matches 4194304.. run xp add @s 4194304 levels
execute if score _ AiUtil matches 4194304.. run scoreboard players remove _ AiUtil 4194304
execute if score _ AiUtil matches 2097152.. run xp add @s 2097152 levels
execute if score _ AiUtil matches 2097152.. run scoreboard players remove _ AiUtil 2097152
execute if score _ AiUtil matches 1048576.. run xp add @s 1048576 levels
execute if score _ AiUtil matches 1048576.. run scoreboard players remove _ AiUtil 1048576
execute if score _ AiUtil matches 524288.. run xp add @s 524288 levels
execute if score _ AiUtil matches 524288.. run scoreboard players remove _ AiUtil 524288
execute if score _ AiUtil matches 262144.. run xp add @s 262144 levels
execute if score _ AiUtil matches 262144.. run scoreboard players remove _ AiUtil 262144
execute if score _ AiUtil matches 131072.. run xp add @s 131072 levels
execute if score _ AiUtil matches 131072.. run scoreboard players remove _ AiUtil 131072
execute if score _ AiUtil matches 65536.. run xp add @s 65536 levels
execute if score _ AiUtil matches 65536.. run scoreboard players remove _ AiUtil 65536
execute if score _ AiUtil matches 32768.. run xp add @s 32768 levels
execute if score _ AiUtil matches 32768.. run scoreboard players remove _ AiUtil 32768
execute if score _ AiUtil matches 16384.. run xp add @s 16384 levels
execute if score _ AiUtil matches 16384.. run scoreboard players remove _ AiUtil 16384
execute if score _ AiUtil matches 8192.. run xp add @s 8192 levels
execute if score _ AiUtil matches 8192.. run scoreboard players remove _ AiUtil 8192
execute if score _ AiUtil matches 4096.. run xp add @s 4096 levels
execute if score _ AiUtil matches 4096.. run scoreboard players remove _ AiUtil 4096
execute if score _ AiUtil matches 2048.. run xp add @s 2048 levels
execute if score _ AiUtil matches 2048.. run scoreboard players remove _ AiUtil 2048
execute if score _ AiUtil matches 1024.. run xp add @s 1024 levels
execute if score _ AiUtil matches 1024.. run scoreboard players remove _ AiUtil 1024
execute if score _ AiUtil matches 512.. run xp add @s 512 levels
execute if score _ AiUtil matches 512.. run scoreboard players remove _ AiUtil 512
execute if score _ AiUtil matches 256.. run xp add @s 256 levels
execute if score _ AiUtil matches 256.. run scoreboard players remove _ AiUtil 256
execute if score _ AiUtil matches 128.. run xp add @s 128 levels
execute if score _ AiUtil matches 128.. run scoreboard players remove _ AiUtil 128
execute if score _ AiUtil matches 64.. run xp add @s 64 levels
execute if score _ AiUtil matches 64.. run scoreboard players remove _ AiUtil 64
execute if score _ AiUtil matches 32.. run xp add @s 32 levels
execute if score _ AiUtil matches 32.. run scoreboard players remove _ AiUtil 32
execute if score _ AiUtil matches 16.. run xp add @s 16 levels
execute if score _ AiUtil matches 16.. run scoreboard players remove _ AiUtil 16
execute if score _ AiUtil matches 8.. run xp add @s 8 levels
execute if score _ AiUtil matches 8.. run scoreboard players remove _ AiUtil 8
execute if score _ AiUtil matches 4.. run xp add @s 4 levels
execute if score _ AiUtil matches 4.. run scoreboard players remove _ AiUtil 4
execute if score _ AiUtil matches 2.. run xp add @s 2 levels
execute if score _ AiUtil matches 2.. run scoreboard players remove _ AiUtil 2
execute if score _ AiUtil matches 1.. run xp add @s 1 levels
execute if score _ AiUtil matches 1.. run scoreboard players remove _ AiUtil 1

## レベルアップ音うるさいので消す
stopsound @s * minecraft:entity.player.levelup
