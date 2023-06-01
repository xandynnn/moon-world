local player = require("models.player")
local potion = require("items.potion")
local zombie = require("enemies.zombie")
local bomber = require("enemies.bomber")

-- Criação dos jogadores
local player1 = player.new("Alexandre")
local player2 = player.new("Bruno")

-- Criação dos inimigos
local zombie1 = zombie.new()
local zombie2 = zombie.new()
local bomber1 = bomber.new()

-- Criação de inventário
player.addItem(potion.new(), player1)
player.addItem(potion.new(), player1)
player.addItem(potion.new(), player1)
player.addItem(potion.new(), player2)
player.addItem(potion.new(), player2)

-- zumbi ataca o player 1 players
zombie.attack(player1, zombie1)
zombie.attack(player1, zombie2)
zombie.attack(player1, zombie2)
zombie.attack(player1, zombie2)
zombie.attack(player1, zombie1)
zombie.attack(player1, zombie2)
zombie.attack(player1, zombie2)
zombie.attack(player1, zombie2)

-- bomber ataca o player 2
bomber.attack(player2, bomber1)
bomber.attack(player2, bomber1)
bomber.attack(player2, bomber1)
bomber.attack(player2, bomber1)
bomber.attack(player2, bomber1)
bomber.attack(player2, bomber1)

-- player1 usou poção para se curar
player.useItem(player1)
player.useItem(player1)