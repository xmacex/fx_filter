local fx = require("fx/lib/fx")
local mod = require 'core/mods'

local FxDfm1 = fx:new{
    subpath = "/fx_dfm1"
}

function FxDfm1:add_params()
   params:add_separator("fx_dfm1", "fx dfm1")
    FxDfm1:add_slot("fx_dfm1_slot", "slot")
    FxDfm1:add_taper("fx_dfm1_freq", "freq", "freq", 20, 20000, 20000, 2, "Hz")
    FxDfm1:add_taper("fx_dfm1_res", "res", "res", 0, 0.95, 0.1, 1)
    FxDfm1:add_taper("fx_dfm1_inputgain", "inputgain", "inputgain", 0.1, 3, 1, 1, "")
    FxDfm1:add_option("fx_dfm1_type", "type", "type", {"lp", "hp"}, 1)

end

mod.hook.register("script_pre_init", "dfm1 mod pre init", function()
    FxDfm1:install()
end)

mod.hook.register("script_post_cleanup", "dfm1 mod post cleanup", function()
end)

return FxDfm1
