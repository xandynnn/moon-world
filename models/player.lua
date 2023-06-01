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
    end,
    addItem = function ( item, instance )
        table.insert(instance.potions, item)
    end,
    wasAttacked = function ( playerInstance, damage )
        if playerInstance.health > 0 then
            playerInstance.health = playerInstance.health - damage
            if playerInstance.health <= 0 then
                print("After the attack, " .. playerInstance.name .. " died!")
            else
                print("After the attack, " .. playerInstance.name .. " has " .. playerInstance.health .. " health points!")
            end
        else
            print(playerInstance.name .. " is already dead!")
        end
    end,
    useItem = function (playerInstance)
        if #playerInstance.potions > 0 then
            if playerInstance.health ~= 100 then
                local sum = playerInstance.health + playerInstance.potions[1].cure
                if sum >= 100 then
                    playerInstance.health = 100
                else
                    playerInstance.health = sum
                end
                table.remove(playerInstance.potions, 1)
                print(playerInstance.name .. " used a healing potion and is with " .. playerInstance.health .."% of health!")
            else
                print(playerInstance.name .. " is already full of health!")
            end
        else
            print(playerInstance.name .. " don't have potions!")
        end
    end
}

return player