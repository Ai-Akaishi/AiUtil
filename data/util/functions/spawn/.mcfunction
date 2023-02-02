#> util:spawn/
# 指定されたデータをもとにエンティティを召喚します。
## 入力: entity data(nbt) <= storage util: in
## 出力: なし(nothing) => storage util: out
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

### 現在地点のPosとRotationを取得
summon minecraft:marker ~ ~ ~ {Tags:[AiUtilMarker]}
execute as @e[distance=..0.0001,type=minecraft:marker,tag=AiUtilMarker,limit=1] run function util:spawn/get_position

## スポナーデータ作成
data modify storage util:_ SpawnerData set value {MaxNearbyEntities:16s,RequiredPlayerRange:-1s,SpawnCount:1s,Delay:0s,MinSpawnDelay:32767s,MaxSpawnDelay:32767s,SpawnRange:0s,SpawnData:{entity:{id:"minecraft:experience_orb",Age:6000s,Passengers:[]},custom_spawn_rules:{block_light_limit:{min_inclusive:0,max_inclusive:15},sky_light_limit:{min_inclusive:0,max_inclusive:15}}},SpawnPotentials:[{Weight:1,Entity:{entity:{id:"util:empty"}}}]}
### 召喚するエンティティのデータを入れる
data modify storage util:_ SpawnerData.SpawnData.entity.Passengers append from storage util: in
### エンティティの向きが指定されていなかったら、現在の向きを入れる
execute unless data storage util:_ SpawnerData.SpawnData.entity.Passengers[-1].Rotation run data modify storage util:_ SpawnerData.SpawnData.entity.Passengers[-1].Rotation set from storage util:_ rotation
### エンティティの座標が指定されていなかったら、現在の座標を入れる
execute unless data storage util:_ SpawnerData.SpawnData.entity.Pos run data modify storage util:_ SpawnerData.SpawnData.entity.Pos set from storage util:_ pos
### スポナー出現
summon minecraft:spawner_minecart ~ -120 ~ {Tags:[AiUtilSpawner,AiUtilSpawnerInit]}
execute positioned ~ -120 ~ as @e[distance=..1,tag=AiUtilSpawnerInit,limit=1] run function util:spawn/set_spawner
