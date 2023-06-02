local enemy = require("models.enemy")
local config = require("configs.config")
local player = require("models.player")

math.randomseed(os.time())

local bomber = {
    new = function (self)
        local newBomber = enemy:new(config.character.baseAtack, "zombies")
        self.force = newBomber.force
        self.category = newBomber.category
        self.brainEat = false
        self.explode = true
        return self
    end,
    attack = function(self, playerInstance)
        local typeAttack = math.random(1,5);
        if typeAttack == 5 then
            player:wasAttacked(playerInstance.health)
            print("Bomber is using self destruct!")
        else
            player:wasAttacked(self.force)
            print("Bomber is attacking " ..playerInstance.name)
        end
    end
}

return bomber