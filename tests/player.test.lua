local player = require("models.player")
local potion = require("items.potion")

local player1 = player.new("Teste")
player.addItem( potion.new(), player1)
player.addItem( potion.new(), player1)
player.wasAttacked(player1, 10)

assert(#player1.potions == 2)
assert(player1.atack == 10)
assert(player1.health == 90)