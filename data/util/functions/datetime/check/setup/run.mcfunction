#> util:datetime/check/setup/
# 時刻チェックをセットアップする

setblock ~ ~ ~ minecraft:command_block{auto:true,Command:"/"}

execute in minecraft:overworld run schedule function util:datetime/check/read/call 2t
