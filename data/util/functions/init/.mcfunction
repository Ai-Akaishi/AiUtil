#> util:init/
# 初回ロード判定処理

data modify storage anywhere: at set from storage util: settings.at
data modify storage anywhere: function set value "util:init/setup/"
function #anywhere:run
