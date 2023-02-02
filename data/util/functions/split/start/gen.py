#!/usr/bin/env python
# -*- coding: utf-8 -*-

import codecs
import os
import math

template = '''#> util:split/start/#num
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage util:_ str.#num set string storage util:_ str.all 0 #num
function util:split/append/#num
data modify storage util:_ str.all set string storage util:_ str.all #num
scoreboard players remove _ AiUtil #num
'''

text = ''

dirname = os.path.dirname(__file__)
os.makedirs(dirname, exist_ok=True)

num = 1
for i in range(9):
  num = num * 2
  with codecs.open(os.path.join(dirname, str(num) + '.mcfunction'), 'w', 'utf_8') as f:
    f.write(template.replace('#num', str(num)))

template = template + '''execute if score _ AiUtil matches #num.. run function util:split/start/#num
'''
num = num * 2
with codecs.open(os.path.join(dirname, str(num) + '.mcfunction'), 'w', 'utf_8') as f:
  f.write(template.replace('#num', str(num)))
