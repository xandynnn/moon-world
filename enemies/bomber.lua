local enemy = require("models.enemy")
local config = require("configs.config")

local bomber = {
    new = function ()
        return {
            enemy.new(config.character.baseAtack, "zombies"),
            brainEat = false,
            explode = true,
        }
    end
}

return bomber