#> util:datetime/init/type1
# 日時取得
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ digit set string storage util:_ chunk[-1] 0 2
scoreboard players operation _ AiUtil *= 10 AiUtil
execute if data storage util:_ {digit:"MD"} run scoreboard players add _ AiUtil 0
execute if data storage util:_ {digit:"MT"} run scoreboard players add _ AiUtil 1
execute if data storage util:_ {digit:"Mj"} run scoreboard players add _ AiUtil 2
execute if data storage util:_ {digit:"Mz"} run scoreboard players add _ AiUtil 3
execute if data storage util:_ {digit:"ND"} run scoreboard players add _ AiUtil 4
execute if data storage util:_ {digit:"NT"} run scoreboard players add _ AiUtil 5
execute if data storage util:_ {digit:"Nj"} run scoreboard players add _ AiUtil 6
execute if data storage util:_ {digit:"Nz"} run scoreboard players add _ AiUtil 7
execute if data storage util:_ {digit:"OD"} run scoreboard players add _ AiUtil 8
execute if data storage util:_ {digit:"OT"} run scoreboard players add _ AiUtil 9
data modify storage util:_ digit set string storage util:_ chunk[-1] 2 3
scoreboard players operation _ AiUtil *= 10 AiUtil
execute if data storage util:_ {digit:"A"} run scoreboard players add _ AiUtil 0
execute if data storage util:_ {digit:"E"} run scoreboard players add _ AiUtil 1
execute if data storage util:_ {digit:"I"} run scoreboard players add _ AiUtil 2
execute if data storage util:_ {digit:"M"} run scoreboard players add _ AiUtil 3
execute if data storage util:_ {digit:"Q"} run scoreboard players add _ AiUtil 4
execute if data storage util:_ {digit:"U"} run scoreboard players add _ AiUtil 5
execute if data storage util:_ {digit:"Y"} run scoreboard players add _ AiUtil 6
execute if data storage util:_ {digit:"c"} run scoreboard players add _ AiUtil 7
execute if data storage util:_ {digit:"g"} run scoreboard players add _ AiUtil 8
execute if data storage util:_ {digit:"k"} run scoreboard players add _ AiUtil 9
data modify storage util:_ digit set string storage util:_ chunk[-1] 3 4
scoreboard players operation _ AiUtil *= 10 AiUtil
execute if data storage util:_ {digit:"0"} run scoreboard players add _ AiUtil 4
execute if data storage util:_ {digit:"1"} run scoreboard players add _ AiUtil 5
execute if data storage util:_ {digit:"2"} run scoreboard players add _ AiUtil 6
execute if data storage util:_ {digit:"3"} run scoreboard players add _ AiUtil 7
execute if data storage util:_ {digit:"4"} run scoreboard players add _ AiUtil 8
execute if data storage util:_ {digit:"5"} run scoreboard players add _ AiUtil 9
execute if data storage util:_ {digit:"w"} run scoreboard players add _ AiUtil 0
execute if data storage util:_ {digit:"x"} run scoreboard players add _ AiUtil 1
execute if data storage util:_ {digit:"y"} run scoreboard players add _ AiUtil 2
execute if data storage util:_ {digit:"z"} run scoreboard players add _ AiUtil 3

data remove storage util:_ chunk[-1]

