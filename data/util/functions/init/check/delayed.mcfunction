#> util:init/check/delayed
# util:initの準備をする

data modify storage anywhere: at set from storage util: settings.at
data modify storage anywhere: function set value "util:init/check/"
function #anywhere:run
