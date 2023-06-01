local config = require("models.config")

local player = {
    new = function ( name )
        return {
            life = config.life,
            health = config.maxHealth,
            atack = config.baseAtack,
            potions = {},
            name = name,
        }
    end
}

return player