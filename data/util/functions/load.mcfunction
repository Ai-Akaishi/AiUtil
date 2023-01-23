#> util:load
# 
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

# 使うかもしれないスコアボード
scoreboard objectives add AiUtil dummy

# advanced機能が有効なときだけutil:init(ワールドロード１回目判定)を呼び出す
execute if data storage util: settings{advanced:true} run function util:init/
