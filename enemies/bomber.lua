local enemy = require("models.enemy")
local config = require("models.config")

local bomber = {
    new = function ()
        return {
            enemy.new(config.baseAtack, "zombies"),
            brainEat = false,
            explode = true,
        }
    end
}

return bomber