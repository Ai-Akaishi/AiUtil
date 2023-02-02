#> util:split/append/512
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ str.256 set string storage util:_ str.512 0 256
function util:split/append/256
data modify storage util:_ str.256 set string storage util:_ str.512 256
function util:split/append/256
