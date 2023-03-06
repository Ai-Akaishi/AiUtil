#> util:display/set/data
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score Shift AiUtil run data get storage util:_ translation[0] 10000
execute store result storage util:_ data.transformation.translation[0] float 0.0001 run scoreboard players operation Shift AiUtil += X AiUtil
execute store result score Shift AiUtil run data get storage util:_ translation[1] 10000
execute store result storage util:_ data.transformation.translation[1] float 0.0001 run scoreboard players operation Shift AiUtil += Y AiUtil
execute store result score Shift AiUtil run data get storage util:_ translation[2] 10000
execute store result storage util:_ data.transformation.translation[2] float 0.0001 run scoreboard players operation Shift AiUtil += Z AiUtil

data modify entity @s {} merge from storage util:_ data
