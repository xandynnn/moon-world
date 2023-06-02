local enemy = require("models.enemy")
local config = require("configs.config")
local player = require("models.player")

local zombie = {
    new = function ( self )
        local newZombie = enemy:new(config.character.baseAtack, "zombies")
        self.force = newZombie.force
        self.category = newZombie.category
        self.brainEat = true
        return self
    end,
    attack = function(self, playerInstance )
        player.wasAttacked(playerInstance, self.force)
    end
}

return zombie