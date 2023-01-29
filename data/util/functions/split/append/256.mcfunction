#> util:split/append/256
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ str.128 set string storage util:_ str.256 0 128
function util:split/append/128
data modify storage util:_ str.128 set string storage util:_ str.256 128
function util:split/append/128
