local config = require("configs.config")

local player = {
    new = function ( name )
        return {
            life = config.character.life,
            health = config.character.maxHealth,
            atack = config.character.baseAtack,
            potions = {},
            name = name,
        }
    end
}

return player