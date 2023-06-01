local enemy = require("models.enemy")
local config = require("models.config")

local zombie = {
    new = function ()
        return {
            enemy.new(config.baseAtack, "zombies"),
            brainEat = true,
            explode = false,
        }
    end
}

return zombie