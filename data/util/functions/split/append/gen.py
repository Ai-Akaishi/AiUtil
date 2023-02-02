#!/usr/bin/env python
# -*- coding: utf-8 -*-

import codecs
import os
import math

template = '''#> util:split/append/#num
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ str.#next set string storage util:_ str.#num 0 #next
function util:split/append/#next
data modify storage util:_ str.#next set string storage util:_ str.#num #next
function util:split/append/#next
'''

text = ''

dirname = os.path.dirname(__file__)
os.makedirs(dirname, exist_ok=True)

next = 1
for i in range(9):
  next = next * 2
  with codecs.open(os.path.join(dirname, str(next * 2) + '.mcfunction'), 'w', 'utf_8') as f:
      f.write(template.replace('#num', str(next * 2)).replace('#next', str(next)))
