local item = {
    type = "",
    func = "",
    price = "",
    new = function ( self, type, func, price )
        self.type = type
        self.func = func
        self.price = price
        return self
    end
}

return item