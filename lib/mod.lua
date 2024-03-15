local fx = require("fx/lib/fx")
local mod = require 'core/mods'

local FxFilter = fx:new{
   subpath = "/fx_filter"
}

function FxFilter:add_params()
   params:add_separator("fx_filter", "fx filter")
   FxFilter:add_slot("fx_filter_slot", "slot")
   FxFilter:add_taper("fx_filter_freq", "freq", "freq", 20, 20000, 20000, 2, "Hz")
   FxFilter:add_taper("fx_filter_res", "res", "res", 0, 0.95, 0.1, 1)
   FxFilter:add_taper("fx_filter_inputgain", "inputgain", "inputgain", 0.1, 3, 1, 1, "")
   FxFilter:add_option("fx_filter_type", "type", "type", {"lp", "hp"}, 1)
end

mod.hook.register("script_pre_init", "filter mod pre init", function()
                     FxFilter:install()
end)

mod.hook.register("script_post_cleanup", "filter mod post cleanup", function()
end)

return FxFilter
