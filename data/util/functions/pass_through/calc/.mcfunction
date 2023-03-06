#> util:pass_through/calc/
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if score X AiUtil <= Y AiUtil if score X AiUtil <= Z AiUtil run function util:pass_through/calc/x
execute if score Y AiUtil <= X AiUtil if score Y AiUtil <= Z AiUtil run function util:pass_through/calc/y
execute if score Z AiUtil <= X AiUtil if score Z AiUtil <= Y AiUtil run function util:pass_through/calc/z

## まだ欲しかったら繰り返し
execute unless data storage util:_ {count:0} run function util:pass_through/calc/
