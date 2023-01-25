#> util:init/setup/run
# util:initの準備をする

setblock ~ ~ ~ minecraft:player_head
data modify block ~ ~ ~ SkullOwner.Name set from storage util: settings.unused_player_head

execute in minecraft:overworld run schedule function util:init/check/delayed 1s

execute in minecraft:overworld run schedule function util:datetime/check/ 2s
