#> util:init/setup/check
# util:initの準備をする

execute unless loaded ~ ~ ~ run schedule function util:init/setup/ 1s
execute unless loaded ~ ~ ~ run forceload add ~ ~
execute if loaded ~ ~ ~ run function util:init/setup/run
