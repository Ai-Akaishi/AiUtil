#> util:pass_through/reverse
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## 結果は反転している方が便利なので反転しちゃう
data modify storage util: out append from storage util:_ out[-1]
data remove storage util:_ out[-1]
execute if data storage util:_ out[0] run function util:pass_through/reverse
