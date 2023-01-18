# AiUtil

Ai Akaishi's Utils Library Datapack  
便利ライブラリデータパック

## 動作確認済みバージョン / Verified minecraft versions

- 1.19.4 (snapshot 23w03a)

## 使い方 / How To Use

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

## 現在標準で対応している関数一覧 / Default Supported Functions

1. split

### split

文字を分割します。  
入力(util: in) : 文字列(string)  
出力(util: out): 文字リスト([string,...])

```nim
data modify storage util: in set value "赤石愛のほうそうきょく"
function #util:split
data get storage util: out
-> ["赤", "石", "愛", "の", "ほ", "う", "そ", "う", "き", "ょ", "く"]
```

## 連絡はこちら / Contact

<https://twitter.com/AiAkaishi>

## ライセンス / LICENSE

These codes are released under the MIT License, see LICENSE.
