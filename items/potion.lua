local item = require("item")

local potion = {
    new = function ()
        local potionItem = item.new("pocao", "vida", 50)
        potionItem.cure = 40
        return potionItem
    end
}

return potion