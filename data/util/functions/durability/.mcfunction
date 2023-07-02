#> util:durability/
# アイテムの耐久値を割合で変更します。
# スロット指定がない場合は現在のメインハンドに適用します。
## 入力: 変更するスロットと割合({slot:byte,rate:float}) => storage util: in
## 出力: なし(nothing)
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## 変更するスロット取得
## スロット指定がなければ、今選択しているところを対象にするよ
execute store result storage util:_ slot byte 1 run data get entity @s SelectedItemSlot
data modify storage util:_ slot set from storage util: in.slot

## スロットに応じて呼び分け
function util:durability/slot/

## * sword shovel pickaxe axe hoe
##	wood	stone	iron	gold	diamond	netherite
##	59		131		250		32		1561	2031

##	leather armor
##	55	80	75	65

##	chain armor / iron armor
##	165	240	225	195

##	golden armor
##	77	112	105	91

##	diamond armor
##	363	528	495	429

##	netherite armor
##	407	592	555	481

##	turtle helmet
##	275

##	fishing	carrot	warped
##	64		25		100

##	trident	shield 
##	250		336

##	bow crossbow
##	384	465

##	flint	shears	elytra
##	64		238		432
