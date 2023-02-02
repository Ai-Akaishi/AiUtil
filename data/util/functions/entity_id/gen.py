#!/usr/bin/env python
# -*- coding: utf-8 -*-

import codecs
import os
import math

template = '''#> util:entity_id/#num
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ _ set string storage util: in #num #next
execute if data storage util:_ {_:"\\""} run data modify storage util: out set string storage util: in 0 #num
execute unless data storage util:_ {_:"\\""} run function util:entity_id/#next
'''

text = ''

dirname = os.path.dirname(__file__)
os.makedirs(dirname, exist_ok=True)

num = 10
for i in range(25):
  num = num + 1
  with codecs.open(os.path.join(dirname, str(num) + '.mcfunction'), 'w', 'utf_8') as f:
    f.write(template.replace('#num', str(num)).replace('#next', str(num + 1)))
