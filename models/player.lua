local config = require("configs.config")

local player = {
    life = config.character.life,
    health = config.character.maxHealth,
    atack = config.character.baseAtack,
    potions = {},
    name = '',
    new = function ( self, name )
        self.name = name
        return self
    end,
    addItem = function ( self, item )
        table.insert( self.potions, item)
    end,
    wasAttacked = function ( self, damage )
        if self.health > 0 then
            self.health = self.health - damage
            if self.health <= 0 then
                print("After the attack, " .. self.name .. " died!")
            else
                print("After the attack, " .. self.name .. " has " .. self.health .. " health points!")
            end
        else
            print(self.name .. " is already dead!")
        end
    end,
    useItem = function (self)
        if #self.potions > 0 then
            if self.health ~= 100 then
                local sum = self.health + self.potions[1].cure
                if sum >= 100 then
                    self.health = 100
                else
                    self.health = sum
                end
                table.remove(self.potions, 1)
                print(self.name .. " used a healing potion and is with " .. self.health .."% of health!")
            else
                print(self.name .. " is already full of health!")
            end
        else
            print(self.name .. " don't have potions!")
        end
    end
}

return player