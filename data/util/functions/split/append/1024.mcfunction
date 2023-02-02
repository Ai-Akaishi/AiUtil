#> util:split/append/1024
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ str.512 set string storage util:_ str.1024 0 512
function util:split/append/512
data modify storage util:_ str.512 set string storage util:_ str.1024 512
function util:split/append/512
