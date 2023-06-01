local account = {
    name = "",
    lastname = "",
    nickname = "",
    cash = 0,
    new = function (self, name, lastname, nickname)
        self.name = name
        self.lastname = lastname
        self.nickname= nickname
        return self
    end,
    deposit = function (self, value)
        self.cash = value
    end
}

return account