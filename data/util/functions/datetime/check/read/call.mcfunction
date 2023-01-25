#> util:datetime/check/read/call
# 時刻チェックをセットアップする

data modify storage anywhere: at set from storage util: settings.at
data modify storage anywhere: function set value "util:datetime/check/read/"
function #anywhere:run
