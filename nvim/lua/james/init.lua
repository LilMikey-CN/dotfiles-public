-- This file make .config/nvim/init.lua load settings in /lua/james.
-- /nvim/init.lua --> /james/init.lua --> set remap packer etc
require("james.set")
require("james.remap")
require("james.packer")
require("james.opts")
