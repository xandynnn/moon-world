local enemy = require("models.enemy")
local config = require("configs.config")
local player = require("models.player")

math.randomseed(os.time())

local bomber = {
    new = function ()
        local newBomber = enemy.new(config.character.baseAtack, "zombies")
        newBomber.brainEat = false
        return newBomber
    end,
    attack = function(playerInstance, zombieInstance)
        local typeAttack = math.random(1,5);
        if typeAttack == 5 then
            player.wasAttacked(playerInstance, playerInstance.health)
            print("Bomber is using self destruct!")
        else
            player.wasAttacked(playerInstance, zombieInstance.baseAtack)
            print("Bomber is attacking " ..playerInstance.name)
        end
    end
}

return bomber