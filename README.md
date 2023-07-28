# AiUtil

Ai Akaishi's Utils Library Datapack  
便利ライブラリデータパック

## 動作確認済みバージョン / Verified minecraft versions

- 1.19.4
- 1.20.1

## 一緒に入れてね / Dependencies

Anywhere Function(<https://github.com/Ai-Akaishi/AnywhereFunction>)  

## 使い方 / How To Use

1. [基本 / Basics](#基本--basics)
2. [関数の上書き / Override functions](#関数の上書き--override-functions)
3. [関数の追加 / Add functions](#関数の追加--add-functions)
4. [Advanced関数 / What are the Advanced Functions?](#advanced関数--what-are-the-advanced-functions)
5. [お助け機能 / Helper feature](#お助け機能--helper-feature)

[現在標準で対応している関数一覧 / Default Supported Functions](#現在標準で対応している関数一覧--default-supported-functions)

### 基本 / Basics

1. util: in に入力を設定します。  
data modify storage util: in set value (INPUT/入力)
2. 関数を呼びます。  
function #util:xxx
3. 結果が取得できます。  
data get storage util: out

### 関数の上書き / Override functions

関数は全て#util:xxxの形式でfunctionタグになっています。  
そのためこのデータパックのファイルを直接書き換えなくても、他のデータパックから挙動を上書きすることができます。  
All functions are defined as function tags in the form of #util:xxx.  
Therefore, you can overwrite the behavior from other datapacks without directly rewriting the files in this datapack.  

```json
#util:splitの挙動を変えたい場合  
When you want to override the behavior of #util:split.  
  
util/tags/functions/split.json  
{  
    "replace": true,  
    "values": [  
        "your_datapack:split"  
    ]  
}
```

### 関数の追加 / Add functions

好きな関数をヘルプ(#util:help)に追加表示できます。  
You can add a new line of any function you like to the help(#util:help).  
  
```json
#util:your_functionのヘルプを追加したい場合  
If you want to add help for #util:your_function  

util/tags/functions/help/functions.json  
{  
    "replace": false,  
    "values": [  
        "your_datapack:help/your_function"  
    ]  
}
```

```nim
your_datapack/functions/help/your_function.mcfunction  
tellraw @s {"text":"function #util:your_function","underlined": true,"clickEvent": {"action": "run_command","value": "/function your_datapack:your_function/help"}}
```

### Advanced関数 / What are the Advanced Functions?

ブロックを使用した高度な関数です。  
ブロックが使われる実行地点が安全であることを保証するため、最初は無効化されています。  
使用したい場合は次の手順で有効化してください。  
This is an Advanced Function using some Block.  
To ensure that the execution point where the block will be placed is safe, this feature is initially disabled.  
If you wish to use it, please follow the next steps to activate it.

1. ライブラリが自由に使用しても安全な場所を設定してください。(読み込まれてない場合は自動的にforceloadされます。)  
(次の設定は初期値です。ワールドの状況に応じて好きな場所を設定してください。)  
set up a location where it is safe for the library to use freely. (If it is not loaded, it will be forceloaded automatically.)  
(The following setting is the default value. Please set your favorite location to suit your world situation.)  
```nim
data modify storage util: settings.at {Pos:[0d,-64d,0d],Rotation:[0f,0f],Dimension:"minecraft:overworld"}
```
2. 使われることのないプレイヤーヘッドを設定します。  
(次の設定は初期値です。状況に応じて好きなプレイヤーヘッドを設定してください。)  
Sets the player_head that will never be used.  
(The following setting is the default value. Set any player_head you like to suit the situation.)  
```nim
data modify storage util: settings.unused_player_head set value "MHF_CoconutG"
```
3. Avanced機能を有効化します。  
Enable the Avanced Function.  
```nim
function #util:advanced/on
```
4. Advanced機能を無効化したい場合は次を実行します。  
If you want to disable the Advanced Function, run the following command.  
```nim
function #util:advanced/off
```

### お助け機能 / Helper feature

一部の関数では簡単に利用するためのお助け機能があります。  
詳しくはそれぞれの項目を参照してください。  
Some functions have a helper feature for easy use.  
Please refer to the respective sections for details.

## 現在標準で対応している関数一覧 / Default Supported Functions

★:Advanced関数です。Advanced機能が有効化されていないと正常に動きません。  
★:Advanced Function; will not work properly unless the Advanced Functions are enabled.

1. [init(function tag)★](#init)
2. [datetime★](#datetime)
3. [split](#split)
4. [resolve](#resolve)
5. [entity_id](#entity_id)
6. [entity_data](#entity_data)
7. [spawn](#spawn)
8. [xp](#xp)
9. [block_states](#block_states)
10. [display](#display)
11. [pass_through](#pass_through)
12. [distance](#distance)
13. [no_exp](#no_exp)
14. [durability](#durability)
15. [type](#type)

### init

minecraft:loadファンクションタグはワールド読み込み時以外にもreloadなどで実行されますが、  
util:initファンクションタグはワールド読み込み時にのみ実行されます。  
好きなファンクションを登録して使っていいよ。  
The minecraft:load function tag is executed on world loading, reload, etc...,  
but the util:init function tag is only executed on world loading.  
You can register any functions you like and use it.

```json
util/tags/functions/init.json  
{  
    "replace": false,  
    "values": [  
        "your_datapack:your_function"  
    ]  
}
```

### datetime

現在の日時を取得します。 / Get the current date and time.  
シングルモード(LAN非公開の場合)では時刻がずれる可能性があります。 / In single mode (when LAN is not open to the public), the time may be shifted.  
ずれた時刻はreload時に修正されます。 / The time discrepancy will be corrected when reloading.  
入力(util: in) : なし(nothing)  
出力(util: out): 日時データ({year:int,month:int,day:int,hour:int,minute:int,second:int,weekday:int})  
weekday: 0=月曜/Monday, 1=火曜/Tuesday, ... 6:日曜/Sunday

```nim
function #util:datetime
data get storage util: out
-> {year: 2023, month: 1, day: 23, hour: 23, minute: 39, second: 35, weekday: 1}
```

### split

文字を分割します。 / Split a string to chars.  
入力(util: in) : 文字列(string)  
出力(util: out): 文字リスト([string,...])

```nim
data modify storage util: in set value "赤石愛のほうそうきょく"
function #util:split
data get storage util: out
-> ["赤", "石", "愛", "の", "ほ", "う", "そ", "う", "き", "ょ", "く"]
```

### resolve

RawJsonコンポーネントをresolveします。  
エンティティを使用しているので、プレイヤーのいる場所からなど  
読み込まれているチャンクから呼び出してください。  
入力(util: in) : JSON component(string)  
出力(util: out): Resolved JSON component(string)

```nim
data modify storage util: in set value '{"selector":"@s"}'
function #util:resolve
data get storage util: out
-> '{"insertion":"1a62fb69-9c5a-42e9-87b5-b94eaf19403a","hoverEvent":{"action":"show_entity","contents":{"type":"minecraft:armor_stand","id":"1a62fb69-9c5a-42e9-87b5-b94eaf19403a","name":{"translate":"entity.minecraft.armor_stand"}}},"translate":"entity.minecraft.armor_stand"}'
```

### entity_id

エンティティのIDを取得します。  
エンティティを使用しているので、プレイヤーのいる場所からなど  
読み込まれているチャンクから呼び出してください。  
入力(util: in) : なし(nothing)  
出力(util: out): entity ID(string)  

```nim
function #util:entity_id
data get storage util: out
-> "minecraft:armor_stand"
```

### entity_data

エンティティのNBT dataを取得します。  
エンティティを使用しているので、プレイヤーのいる場所からなど  
読み込まれているチャンクから呼び出してください。  
入力(util: in) : なし(nothing)  
出力(util: out): entity data(nbt)  

```nim
function #util:entity_data
data get storage util: out
-> {Motion: [0.0d, 0.0d, 0.0d], Facing: 1b, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, FallDistance: 0.0f, Passengers: [{Motion: [0.0d, -0.029999999329447746d, 0.0d], Owner: [I; -1162359358, -155564042, -1197870534, -584156033], Invulnerable: 0b, LeftOwner: 1b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [-4.8231647E-32f, -2.3410684E-32f], FallDistance: 0.0f, Pos: [23.5d, 67.40625d, -30.5d], HasBeenShot: 1b, Fire: -1s, id: "minecraft:snowball"}], Fire: -1s, TileY: 67, TileX: 23, Invisible: 0b, id: "minecraft:item_frame", TileZ: -31, Fixed: 0b}
```

### spawn

指定されたデータをもとにエンティティを召喚します。  
入力(util: in) : entity data(nbt)  
出力(util: out): なし(nothing)  

```nim
data modify storage util: in set value {Motion: [0.0d, 0.0d, 0.0d], Facing: 1b, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, FallDistance: 0.0f, Passengers: [{Motion: [0.0d, -0.029999999329447746d, 0.0d], Owner: [I; -1162359358, -155564042, -1197870534, -584156033], Invulnerable: 0b, LeftOwner: 1b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [-4.8231647E-32f, -2.3410684E-32f], FallDistance: 0.0f, Pos: [23.5d, 67.40625d, -30.5d], HasBeenShot: 1b, Fire: -1s, id: "minecraft:snowball"}], Fire: -1s, TileY: 67, TileX: 23, Invisible: 0b, id: "minecraft:item_frame", TileZ: -31, Fixed: 0b}
function #util:spawn
-> 指定のエンティティが召喚される / the specified entity spawned.
```

### xp

経験値を百分率(%)で設定します。  
入力(util: in) : 百分率/percentage(int)  
出力(util: out): なし(nothing)  

```nim
data modify storage util: in set value 87
function #util:xp
-> 経験値バーが次のレベルアップまでの87%になる / The experience bar will be 87% until the next level up.
```

### block_states

指定された範囲のblock_stateを取得します。  
エンティティを使用しているので、プレイヤーのいる場所からなど  
読み込まれているチャンクから呼び出してください。  
入力(util: in) : range({x:int,y,int,z:int})  
出力(util: out): block_states([[[{Name:string,Properties:{}},...],...],...])  

```nim
data modify storage util: in set value {x:15,y:10,z:12}
function #util:block_states
data get storage util: out
-> [[[{Properties: {eye: "false", east: "true", half: "bottom", shape: "straight", south: "false", north: "true", west: "true", facing: "south", axis: "y", snowy: "false"}, Name: "minecraft:andesite"}, {Properties: {eye: "false", east: "true", half: "bottom", shape: "straight", south: "false", north: "true", west: "true", facing: "south", axis: "y", snowy: "false"}, Name: "minecraft:granite"}, ...
```

### display

指定されたデータをもとにブロックディスプレイを召喚します。  
エンティティを使用しているので、プレイヤーのいる場所からなど  
読み込まれているチャンクから呼び出してください。  
入力(util: in) : display data({scale:float, tag:string|{...}, block_states:[[[{Name:string,Properties:{}},...],...],...])  
出力(util: out): なし(nothing)  

```nim
data modify storage util: in set value {x:15,y:10,z:12}
function #util:block_states

data modify storage util: in set value {scale: 0.0625f, tag: "Miniature"}
data modify storage util: in.block_states set from storage util: out

function #util:display
-> ブロックディスプレイが表示される / the specified block_displays spawned.
```

### pass_through

通過領域の移動方向を求めます。(リストの後ろが先頭です。) / Finds the move directions of the pass-through area. (The end of the list is the beginning.)  
入力(util: in) : 移動ブロック数(int)  
出力(util: out): 移動方向のリスト([string,...])

```nim
data modify storage util: in set value 10
execute anchored eyes positioned ^ ^ ^ run function #util:pass_through
data get storage util: out
-> ["-Y", "-Z", "+X", "-Y", "-Z", "-Y", "+X", "-Z", "-Z", "-Y"]
```

### distance

実行地点と実行者の距離を求めます。単位はmです。方角によって誤差が生じることがあります。  
Gets the distance between the execution point and the executor. The unit is m. There may be some errors depending on the direction.  
入力(util: in) : なし(nothing)  
出力(util: out): 距離(double) => storage util: out  

```mcfunction
execute as @p at 0.0 0.0 0.0 run function #util:distance  
data get storage util: out  
# => 5381.27d  
```

### no_exp

エンティティの経験値ドロップを無効化します。アイテムのドロップもなくなります。  
The entity's experience drop will be suppressed. This will also eliminate item drops.  
入力(util: in) : なし(nothing)  
出力(util: out): なし(nothing)  

```mcfunction
# 経験値ドロップをなくしたいエンティティに実行させてください。  
# execute as an entity that you want to eliminate experience drops.  
execute as @e[tag=Mob] at @s run function #util:no_exp  
```

#### no_expのお助け機能

NoExpのタグを与えるだけで経験値ドロップがなくなるようにできます。  
You can make the experience drop disappear by simply giving mobs a NoExp tag.  

```mcfunction
# 実行すると有効になります。  
# The feature will be enabled by running the below.  
function #util:no_exp/helper/on  
  
# 実行すると再度有効にするまで無効になります。  
# The feature will be disabled by running the below.  
function #util:no_exp/helper/off  
  
# 有効な状態ではNoExpタグがついたMobの経験値ドロップを自動的になくします。  
# Under the enabled condition, experience drops for mobs tagged with NoExp are automatically eliminated.  
execute summon husk run tag @s add NoExp  
# => 召喚されたhuskは何もドロップしない / The summoned husk does not drop anything.  
```

### durability

アイテムの耐久値を割合で変更します。  
スロット指定がない場合はメインハンドに適用します。  
It changes the durability value of an item by a percentage.  
If the slot is not specified, it is applied to the mainhand.
入力(util: in) : slot and rate({slot:byte,rate:float})  
出力(util: out): なし(nothing)  

```mcfunction
data modify storage util: in set value {slot:103b,rate:0.25f}  
execute as @p run function #util:durability  
# => 一番近くのプレイヤーの頭装備の耐久値が残り25%になります。  
# The nearest player's head equipment has 25% durability value remaining.
```

#### durabilityのお助け機能

プレイヤーのDurabilityスコアに0~100を設定するだけでメインハンドのアイテムの耐久値を変更できます。

```mcfunction
# 実行すると有効になります。  
# The feature will be enabled by running the below.  
function #util:durability/helper/on  
  
# 実行すると再度有効にするまで無効になります。  
# The feature will be disabled by running the below.  
function #util:durability/helper/off  
  
# Durabilityスコアに数値を設定するとメインハンドのアイテムの耐久値がその数値に応じた割合になります。  
# If you set a numerical value for a player's Durability score, the durability value of the item in the mainhand will be a percentage of that value.  
scoreboard players set @p Durability 30  
# => 一番近くのプレイヤーのメインハンドのアイテムの耐久値が残り30%になる
# The durability value of the item in the nearest player's mainhand is set to 30% remaining.  
```

### type

入力データの型を取得します。  
Gets the type of input.  
入力(util: in) : 入力データ(any)  
出力(util: out): 型名(string)  
  
以下の名前で返ります。 / Return one of the following list.  
byte, short, int, long, float, double, string, list, compound, byte_array, int_array, long_array, or unknown  

```mcfunction
data modify storage util: in set value 1234567L  
function #util:type  
data get storage util: out  
# => "long"  
```

## 連絡はこちら / Contact

<https://twitter.com/AiAkaishi>

## ライセンス / LICENSE

These codes are released under the MIT License, see LICENSE.
