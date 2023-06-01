local account = require("models.account")

local myAccount = account:new("Alexandre", "Mattos", "Xandynnn")
myAccount:deposit(500)
assert(myAccount.cash == 500)
myAccount:deposit(1000)
assert(myAccount.cash == 1000)