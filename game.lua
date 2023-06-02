local player = require("models.player")
local potion = require("items.potion")
local zombie = require("enemies.zombie")
local bomber = require("enemies.bomber")

-- Criação dos jogadores
local player1 = player:new("Alexandre")
local player2 = player:new("Bruno")

-- Criação dos inimigos
local zombie1 = zombie:new()
local zombie2 = zombie:new()
local bomber1 = bomber:new()

-- Criação de inventário
player:addItem(potion:new())
player:addItem(potion:new())
player:addItem(potion:new())
player:addItem(potion:new())
player:addItem(potion:new())

-- zumbi ataca o player 1 players
zombie:attack(player1)
zombie:attack(player1)
zombie:attack(player1)
zombie:attack(player1)
zombie:attack(player1)
zombie:attack(player1)
zombie:attack(player1)
zombie:attack(player1)

-- bomber ataca o player 2
bomber:attack(player2)
bomber:attack(player2)
bomber:attack(player2)
bomber:attack(player2)
bomber:attack(player2)
bomber:attack(player2)

-- player1 usou poção para se curar
player:useItem()
player:useItem()