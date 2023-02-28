#> util:display/set/data
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result storage util:_ data.transformation.translation[0] float 0.0001 run scoreboard players get X AiUtil
execute store result storage util:_ data.transformation.translation[1] float 0.0001 run scoreboard players get Y AiUtil
execute store result storage util:_ data.transformation.translation[2] float 0.0001 run scoreboard players get Z AiUtil

data modify entity @s {} merge from storage util:_ data
