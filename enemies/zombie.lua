local enemy = require("models.enemy")
local config = require("configs.config")
local player = require("models.player")

local zombie = {
    new = function ()
        local newZombie = enemy.new(config.character.baseAtack, "zombies")
        newZombie.brainEat = true
        return newZombie
    end,
    attack = function(playerInstance, zombieInstance )
        player.wasAttacked(playerInstance, zombieInstance.force)
    end
}

return zombie