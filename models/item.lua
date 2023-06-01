local item = {
    new = function ( type, func, price )
        return {
            type = type,
            func = func,
            price = price
        }
    end
}

return item