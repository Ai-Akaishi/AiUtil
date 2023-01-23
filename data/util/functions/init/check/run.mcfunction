#> util:init/check/run
# ワールド読み込み初回チェック

data modify storage util:_ load_time64 set string block ~ ~ ~ SkullOwner.Properties.textures[0].Value
setblock ~ ~ ~ minecraft:air
execute store result storage util:_ _ byte 1 run data modify storage util:_ last_load_time64 set from storage util:_ load_time64

## trueだったらワールド読み込まれたばかり
execute if data storage util:_ {_:true} run function #util:init
